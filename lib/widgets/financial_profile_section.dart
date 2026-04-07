import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history_section.dart';

class FinancialProfileSection extends StatelessWidget {
  const FinancialProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 40),
          MyCardAndTransactionHistorySection(),
          const SizedBox(height: 24),
          const IncomeSection(),
        ],
      ),
    );
  }
}
