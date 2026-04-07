import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quickinvoice_section.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesAndQuickInvoiceSection(),
                const SizedBox(height: 24),
                MyCardAndTransactionHistorySection(),
                const SizedBox(height: 24),
                IncomeSection(),
              ],
            ),
          ),
        ),
        const SizedBox(width: 32),
      ],
    );
  }
}
