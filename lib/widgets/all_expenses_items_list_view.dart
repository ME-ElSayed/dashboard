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
      children: AllExpensesItemsListView.items.asMap().entries.map((entry) {
        int index = entry.key;
        AllExpensesItemModel item = entry.value;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              right: index != AllExpensesItemsListView.items.length - 1
                  ? 12
                  : 0,
            ),
            child: GestureDetector(
              onTap: () {
                selectedIndex = index;
                setState(() {});
              },

              child: AllExpensesItem(
                isSelected: selectedIndex == index,
                item: item,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
