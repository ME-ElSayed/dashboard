import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/widgets/active_all_expenses_item.dart';
import 'package:responsive_dashboard/widgets/in_active_alll_expenses_item.dart';


class AllExpensesItem extends StatelessWidget {
  final AllExpensesItemModel item;
  final bool isSelected;
  const AllExpensesItem({super.key, required this.item, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveAllExpensesItem(item: item)
        : InActiveAllExpensesItem(item: item);
  }
}

