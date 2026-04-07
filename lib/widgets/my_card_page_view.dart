import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/my_card.dart';

class MyCardsPageView extends StatelessWidget {
  final void Function(int)? onPageChanged;
  final PageController pageController;
  const MyCardsPageView({
    super.key,
    required this.pageController,
    this.onPageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      physics: const BouncingScrollPhysics(),
      onPageChanged: onPageChanged,
      controller: pageController,
      scrollDirection: Axis.horizontal,
      children: List.generate(
        3,
        (index) => Padding(
          padding: EdgeInsetsGeometry.only(right: (index == 2) ? 0 : 10),
          child: const MyCard(),
        ),
      ),
    );
  }
}
