import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class QuickInVoiceHeaser extends StatelessWidget {
  const QuickInVoiceHeaser({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Quick Invoice', style: AppStyles.styleSemiBold20(context)),
        const Expanded(child: SizedBox()),
        Container(
          width: 48,
          height: 48,
          decoration: ShapeDecoration(
            color: const Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: Icon(Icons.add, color: const Color(0xFF4EB7F2), size: 24),
        ),
      ],
    );
  }
}
