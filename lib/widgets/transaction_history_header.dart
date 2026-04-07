import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class TansctionHistoryHeader extends StatelessWidget {
  const TansctionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transaction History', style: AppStyles.styleSemiBold20(context)),
        Text(
          'See all',
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: AppColors.primaryColor),
        ),
      ],
    );
  }
}
