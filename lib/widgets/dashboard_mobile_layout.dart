import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses_and_quickinvoice_section.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
            child: Column(
              children: [
                AllExpensesAndQuickInvoiceSection(),
                const SizedBox(height: 24),
                MyCardAndTransactionHistorySection(),
                const SizedBox(height: 24),
                IncomeSection(),
              ],
            ),
          );
  }
}