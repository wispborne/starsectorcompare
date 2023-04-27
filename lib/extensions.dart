extension ListExtensions<T> on List<T> {
  T getOrElse(int index, T defaultValue) {
    try {
      return this[index];
    } catch (e) {
      return defaultValue;
    }
  }
}

extension IterableExtensions<E> on Iterable<E> {
  Iterable<List<E>> chunked(int chunkSize) sync* {
    if (length <= 0) {
      yield [];
      return;
    }
    int skip = 0;
    while (skip < length) {
      final chunk = this.skip(skip).take(chunkSize);
      yield chunk.toList(growable: false);
      skip += chunkSize;
      if (chunk.length < chunkSize) return;
    }
  }
}

extension StringExtensions on String? {
  String? getOrNull() {
    if (this == "") return null;
    return this;
  }

  String ifEmptyOrNull(String value) {
    if (this == null || this == "") return value;
    return this!;
  }
}
