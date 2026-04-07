import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(child: 
    Column(
      children: [
        MyCardSection(),
        Divider(
          height: 40,
          thickness: 1,
          color: const Color(0xFFE0E0E0),
        ),
        TransactionHistory()
       
      ],
    ),);
  }
}