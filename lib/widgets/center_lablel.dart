import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CenterLabel extends StatelessWidget {
  final Color color;
  final String label;
  final String percent;
  const CenterLabel({
    super.key,
    required this.color,
    required this.label,
    required this.percent,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          percent,
          textAlign: TextAlign.center,
          style: AppStyles.styleSemiBold24(context).copyWith(color: color),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppStyles.styleBold16(context),
        ),
      ],
    );
  }
}
