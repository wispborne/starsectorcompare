import 'dart:math';

import 'package:flutter/material.dart';

/// <https://github.com/LucaDillenburg/Scalable-Data-Table>
/// [ScalableDataTable] uses builder property to only build the active
/// rows at the moment. Similar to ListView.builder, it improves the
/// performance in tables with many rows.
///
/// The header will be visible at all times and the rows will get the rest
/// of the available space.
class ScalableDataTable extends StatelessWidget {
  /// It's recommended to use [ScalableTableHeader]
  final Widget header;

  /// It's recommended to use [ScalableTableRow]
  final Widget Function(BuildContext, int) rowBuilder;

  /// Use -1 for loading
  final int itemCount;

  final double? maxWidth;

  /// This will be built instead of the rows if [itemCount] is 0.
  final Widget Function(BuildContext) emptyBuilder;

  /// Loading indicator then [itemCount] is -1. If null,
  /// [CircularProgressIndicator] will be shown.
  final Widget Function(BuildContext)? loadingBuilder;

  final ScrollController? scrollController;
  final horizontalScrollController = ScrollController();

  final TextStyle? textStyle;

  /// If non-null, forces the children to have the given extent vertically.
  /// Specifying an [itemExtent] is more efficient than letting the children
  /// determine their own extent because the scrolling machinery can make use
  /// of the foreknowledge of the children's extent to save work, for example
  /// when the scroll position changes drastically.
  final double? rowHeight;

  /// If the availabel width is smaller than [minWidth], a horizontal
  /// scrollable list will be created to ensure that the rows and columns have
  /// at least [minWidth] of available width.
  final double? minWidth;

  ScalableDataTable({
    required this.rowBuilder,
    required this.header,
    required this.itemCount,
    required this.emptyBuilder,
    this.rowHeight,
    this.maxWidth,
    this.loadingBuilder,
    this.textStyle,
    this.scrollController,
    this.minWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localMinWidth = minWidth;
    return Container(
      constraints: localMinWidth != null
          ? BoxConstraints(minWidth: localMinWidth)
          : null,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = max(constraints.maxWidth, minWidth ?? 0);
          return _buildDefaultTextStyleWrapper(
            child: Scrollbar(
              thumbVisibility: true,
              controller: horizontalScrollController,
              scrollbarOrientation: ScrollbarOrientation.bottom,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: horizontalScrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: width,
                      child: header,
                    ),
                    Container(
                      height: 2,
                      color: Colors.grey[300]!.withAlpha(100),
                      width: width,
                    ),
                    Expanded(
                      child: SizedBox(
                        width: width,
                        child: _buildContent(context, width: width),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context, {required double width}) {
    buildNotContentWrapper(Widget child) => Center(
        child: Padding(padding: const EdgeInsets.only(top: 20), child: child));
    if (itemCount < 0) {
      return buildNotContentWrapper(
        loadingBuilder?.call(context) ?? const CircularProgressIndicator(),
      );
    }
    if (itemCount == 0) return buildNotContentWrapper(emptyBuilder(context));

    return ListView.builder(
      controller: scrollController,
      itemExtent: rowHeight,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          rowBuilder(context, index),
          Container(
            height: 1,
            color: Colors.grey[100]?.withAlpha(50),
            width: width,
          ),
        ],
      ),
      itemCount: itemCount,
    );
  }

  Widget _buildDefaultTextStyleWrapper({required Widget child}) {
    final localTextStyle = textStyle;
    if (localTextStyle == null) return child;
    return DefaultTextStyle(
      style: localTextStyle,
      child: child,
    );
  }
}
