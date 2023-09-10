import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// <https://github.com/LucaDillenburg/Scalable-Data-Table>
class ScalableTableHeader extends StatelessWidget {
  final List<Widget> children;

  /// Use [Container] width or [Expanded] with width wrapper
  final Widget Function(BuildContext, int columnIndex, Widget child) columnWrapper;

  final double? maxWidth;
  final EdgeInsets? padding;

  const ScalableTableHeader({
    required this.children,
    required this.columnWrapper,
    this.padding,
    this.maxWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: _HorizontalTable(
          columnWrapper: columnWrapper,
          padding: padding,
          maxWidth: maxWidth,
          children: children,
        ),
      ),
    );
  }
}

class ScalableTableRow extends StatelessWidget {
  final List<Widget> children;
  final Color? color;

  /// Use [Container] width or [Expanded] with width wrapper
  final Widget Function(BuildContext, int columnIndex, Widget child) columnWrapper;

  final double? maxWidth;
  final Function()? onTap;
  final EdgeInsets? padding;

  const ScalableTableRow({
    required this.children,
    required this.columnWrapper,
    this.color,
    this.maxWidth,
    this.onTap,
    this.padding,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final child = GestureDetector(
      onTap: onTap,
      child: Container(
        color: color,
        width: double.infinity,
        child: Center(
          child: _HorizontalTable(
            columnWrapper: columnWrapper,
            padding: padding,
            maxWidth: maxWidth,
            children: children,
          ),
        ),
      ),
    );

    if (onTap == null) return child;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: child,
    );
  }
}

class _HorizontalTable extends StatelessWidget {
  final List<Widget> children;

  /// Use [Container] width or [Expanded] with width wrapper
  final Widget Function(BuildContext, int columnIndex, Widget child) columnWrapper;

  final double? maxWidth;
  final EdgeInsets? padding;

  const _HorizontalTable({
    required this.children,
    required this.columnWrapper,
    this.padding,
    this.maxWidth,
  });

  @override
  Widget build(BuildContext context) {
    final localMaxWidth = maxWidth;
    return Container(
      constraints: (localMaxWidth == null) ? null : BoxConstraints(maxWidth: localMaxWidth),
      padding: (padding ?? const EdgeInsets.symmetric(horizontal: 20)) + const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: children.mapIndexed((index, child) => columnWrapper(context, index, child)).toList(),
      ),
    );
  }
}
