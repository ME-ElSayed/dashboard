import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details_model.dart';
import 'package:responsive_dashboard/widgets/income_details_card.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});
  static const items = [
    IncomeDetailsModel(
      color: Color(0xFF208BC7),
      title: 'Design service',
      percentage: '%40',
    ),
    IncomeDetailsModel(
      color: Color(0xFF4DB7F2),
      title: 'Design product',
      percentage: '%25',
    ),
    IncomeDetailsModel(
      color: Color(0xFF064060),
      title: 'Product royalti',
      percentage: '%20',
    ),
    IncomeDetailsModel(
      color: Color(0xFFE2DECD),
      title: 'Other',
      percentage: '%22',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) =>
          IncomeDetailsCard(itemDetailsModel: items[index]),
      itemCount: items.length,
    );
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.start,
    //   children: items
    //       .map((e) => IncomeDetailsCard(itemDetailsModel: e))
    //       .toList(),
    // );
  }
}
