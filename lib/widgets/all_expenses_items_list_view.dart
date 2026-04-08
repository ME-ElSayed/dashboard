import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});

  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      imagePath: Assets.imagesBalance,
      title: 'Balance',
      amount: '\$20.00',
      date: 'April 2022',
    ),
    AllExpensesItemModel(
      imagePath: Assets.imagesIncome,
      title: 'income',
      amount: '\$20.00',
      date: 'April 2022',
    ),
    AllExpensesItemModel(
      imagePath: Assets.imagesExpenses,
      title: 'Expenses',
      amount: '\$20.00',
      date: 'April 2022',
    ),
  ];

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 0; i < AllExpensesItemsListView.items.length; i++) ...[
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = i;
                });
              },
              child: AllExpensesItem(
                isSelected: selectedIndex == i,
                item: AllExpensesItemsListView.items[i],
              ),
            ),
          ),
          if (i != AllExpensesItemsListView.items.length - 1)
            const SizedBox(width: 12),
        ],
      ],
    );
  }
}
