import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: AppColors.surfaceAlt(context),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColors.border(context)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 18,
        children: [
          Text('Monthly', style: AppStyles.styleRegular16(context)),
          Icon(
            Icons.keyboard_arrow_down,
            color: AppColors.iconOnSurface(context),
            size: 24,
          ),
        ],
      ),
    );
  }
}
