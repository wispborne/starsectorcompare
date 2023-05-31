// Copyright 2022 Andre Lipke
//
// Copyright 2014 The Flutter Authors. All rights reserved.
//
// Redistribution and use in source and binary forms, with or without modification,
// are permitted provided that the following conditions are met:
//
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
//       copyright notice, this list of conditions and the following
//       disclaimer in the documentation and/or other materials provided
//       with the distribution.
//     * Neither the name of the copyright holder nor the names of its
//       contributors may be used to endorse or promote products derived
//       from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR
// ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
// ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
import 'package:dart_extensions_methods/dart_extension_methods.dart';
import 'package:petitparser/petitparser.dart';

import 'element.dart';

class JsonGrammar extends GrammarDefinition<Token<JsonElement>> {
  final separators = anyOf(",;").plus();

  static Token<JsonElement> parse(String input) =>
      JsonGrammar().build<Token<JsonElement>>().parse(input).value;

  @override
  Parser<Token<JsonElement>> start() => ref0(element).end();

  Parser<Token<JsonElement>> element() => [
    literalElement(),
    mapElement(),
    arrayElement(),
  ].toChoiceParser(failureJoiner: selectFarthestJoined).cast();

  Parser<String> lineComment() {
    return (string('#') & Token.newlineParser().neg().star()).flatten();
  }

  Parser<String> inlineComment() {
    return (string('/*') & any().starLazy(string('*/')) & string('*/'))
        .flatten();
  }

  Parser<String> space() {
    return (whitespace() | lineComment() | inlineComment()).star().flatten();
  }

  Parser<Token<JsonElement>> token(Parser<JsonElement> parser) {
    return (ref0(space) & parser.token() & ref0<String>(space))
        .token()
        .map((token) {
      final res = token.value;
      final leading = res[0] as String;
      final body = res[1] as Token<JsonElement>;
      final trailing = res[2] as String;
      if (leading.isEmpty && trailing.isEmpty) {
        return body;
      } else {
        return token.let(
              (res) => JsonWhitespace(
            leading: leading,
            body: body,
            trailing: trailing,
          ).body,
        );
      }
    });
  }

  Parser<String> escapedChar() =>
      (char(r'\') & pattern(escapeChars.keys.join()))
          .pick(1)
          .map((Object? str) => escapeChars[str]!);

  Parser<String> unicodeChar() =>
      (string(r'\u') & pattern('0-9A-Fa-f').times(4)).map((digits) {
        final charCode = int.parse((digits[1] as List).join(), radix: 16);
        return String.fromCharCode(charCode);
      });

  Parser<String> stringLiteral() {
    return (anyOf('"', '\'') &
    (pattern(r'^"\') |
    ref0<String>(escapedChar) |
    ref0<String>(unicodeChar))
        .star()
        .map<String>((list) => list.join()) &
    anyOf('"', '\''))
        .pick(1)
        .cast();
  }

  Parser<String> unquotedStringLiteral() {
    return ((pattern("A-Za-z_0-9")
        // A-Za-z_0-9|
        // ref0<String>(escapedChar) |
        // ref0<String>(unicodeChar)
    )
        .plus()
        .map<String>((list) => list.join()))
    // .pick(0)
        .cast();
  }

  Parser<bool> trueLiteral() => string('true').map((_) => true);

  Parser<bool> falseLiteral() => string('false').map((_) => false);

  Parser<void> nullLiteral() => string('null').map((_) {});

  Parser<num> numLiteral() => (char('-').optional() &
  (char('0').or(digit().plus()) &
  char('.').seq(digit().plus()).optional() |
  char('.').seq(digit().plus())) &
  pattern('eE')
      .seq(pattern('-+').optional())
      .seq(digit().plus())
      .optional())
      .flatten()
      .map(num.parse);

  Parser<Token<JsonElement>> literalElement() {
    return token([
      ref0(trueLiteral),
      ref0(falseLiteral),
      ref0(nullLiteral),
      ref0(numLiteral),
      ref0(stringLiteral),
      ref0(unquotedStringLiteral),
    ].toChoiceParser().token().map(
          (str) => JsonLiteral(value: str),
    ));
  }

  Parser<Token<JsonElement>> mapElement() {
    return token((char('{') &
    ref0(mapEntryElement)
        .plusSeparated(separators)
        .map((e) => e.elements)
        .optional() &
    ref0<String>(space) &
    separators.star() &
    ref0<String>(space) &
    char('}'))
        .map((res) {
      return JsonMap(
        children: (res[1] as List? ?? <Object?>[])
            .cast<Token<JsonMapEntry>>()
            .toList(),
        space: res[2] as String,
      );
    }));
  }

  Parser<Token<JsonElement>> arrayElement() {
    return token((char('[') &
    ref0(element)
        .plusSeparated(separators)
        .map((e) => e.elements)
        .optional() &
    ref0<String>(space) &
    separators.star() &
    ref0<String>(space) &
    char(']'))
        .map((res) {
      return JsonArray(
        children: (res[1] as List? ?? <Object?>[])
            .cast<Token<JsonElement>>()
            .toList(),
        space: res[2] as String,
      );
    }));
  }

  Parser<Token<JsonMapEntry>> mapEntryElement() {
    return (ref0(space) &
    ref0(stringLiteral).token() &
    ref0<String>(space) &
    char(':') &
    ref0<Object?>(element))
        .map((res) {
      return JsonMapEntry(
        beforeKey: res[0] as String,
        key: res[1] as Token<String>,
        afterKey: res[2] as String,
        value: res[4] as Token<JsonElement>,
      );
    }).token();
  }

  static const escapeChars = {
    '"': '"',
    r'\': r'\',
    '/': '/',
    'b': '\b',
    'f': '\f',
    'n': '\n',
    'r': '\r',
    't': '\t'
  };
}
