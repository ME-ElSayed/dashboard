import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/widgets/my_card_page_view.dart';

class MyCardSection extends StatelessWidget {
  const MyCardSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          SizedBox(
            width: 420,
            child: Text('My card', style: AppStyles.styleSemiBold20(context)),
          ),
          const SizedBox(height: 20),
          MyCardsPageView(),
          const SizedBox(height: 19),
          DotsIndicator(currentPageIndex: 0),
        ],
      ),
    );
  }
}
