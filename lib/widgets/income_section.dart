import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(child: 
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       IncomeHeader(),
       const SizedBox(height: 16),
       Row(
        children: [
         Expanded(child: IncomeChart()),
        ],
       )

      ],
    ),);
  }
}