library sliver_flutter;

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sliver_header_delegate/src/extension/widget_extension.dart';
import 'package:sliver_header_delegate/src/item/header_background.dart';

// TODO FlexibleBuilder
typedef FlexibleBuilder = Widget Function(
  BuildContext context,
  double progress,
);

class FlexibleHeaderDelegateMR extends SliverPersistentHeaderDelegate {
  FlexibleHeaderDelegateMR({
    this.collapsedHeight = kToolbarHeight,
    this.expandedHeight = kToolbarHeight * 3,
    this.children,
    this.actions,
    this.title,
    this.backgroundColor,
    this.background,
    this.collapsedElevation = 8,
    this.expandedElevation = 0,
    this.leading,
    this.builder,
    this.statusBarHeight = 0,
  });

  final List<Widget>? actions;
  final Widget? leading;
  final Widget? title;

  final double expandedHeight;
  final double collapsedHeight;
  final List<Widget>? children;
  final Color? backgroundColor;
  final Widget? background;
  final double expandedElevation;
  final double collapsedElevation;
  final FlexibleBuilder? builder;

  final double statusBarHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final offset = min(shrinkOffset, maxExtent - minExtent);
    final progress = offset / (maxExtent - minExtent);

    final visibleMainHeight = max(maxExtent - shrinkOffset, minExtent);

    return Material(
      color: progress < 1 ? Colors.transparent : backgroundColor,
      elevation: progress < 1 ? expandedElevation : collapsedElevation,
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (background != null) background!.transform(progress),
          Container(
            height: visibleMainHeight,
            padding: EdgeInsets.only(top: statusBarHeight),
            color: backgroundColor ?? Theme.of(context).appBarTheme.color,
            child: Stack(
              fit: StackFit.expand,
              children: [
                if (builder != null) builder!(context, progress),
                if (children != null)
                  ...children!.map((item) => item.transform(progress)).toList(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => expandedHeight + statusBarHeight;

  @override
  double get minExtent => collapsedHeight + statusBarHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}
