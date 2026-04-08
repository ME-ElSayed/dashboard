import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CenterDefaultLabel extends StatelessWidget {
  const CenterDefaultLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Income',
          textAlign: TextAlign.center,
          style: AppStyles.styleMedium20(context).copyWith(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Tap a section',
          textAlign: TextAlign.center,
          style: AppStyles.styleMedium20(
            context,
          ).copyWith(color: Colors.grey.shade500),
        ),
      ],
    );
  }
}
