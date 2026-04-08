import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/chart_item.dart';
import 'package:responsive_dashboard/widgets/center_default_label.dart';
import 'package:responsive_dashboard/widgets/center_lablel.dart';

class DetailedIncomeChartBody extends StatelessWidget {
  const DetailedIncomeChartBody({
    super.key,
    required this.centerRadius,
    required this.activeItem,
    required this.activeIndex,
  });

  final double centerRadius;
  final ChartItem? activeItem;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: centerRadius * 1.7,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 250),
        transitionBuilder: (child, anim) => FadeTransition(
          opacity: anim,
          child: ScaleTransition(scale: anim, child: child),
        ),
        child: activeItem != null
            ? CenterLabel(
                key: ValueKey(activeIndex),
                color: activeItem!.color,
                label: activeItem!.label,
                percent: activeItem!.percent,
              )
            : CenterDefaultLabel(),
      ),
    );
  }
}

