// import 'package:flutter/material.dart';
// import 'package:responsive_dashboard/models/income_details_model.dart';
// import 'package:responsive_dashboard/utils/app_styles.dart';

// class IncomeDetailsCard extends StatelessWidget {
//   final IncomeDetailsModel itemDetailsModel;
//   const IncomeDetailsCard({super.key, required this.itemDetailsModel});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Container(
//         width: 12,
//         height: 12,
//         decoration: ShapeDecoration(
//           color: itemDetailsModel.color,
//           shape: const OvalBorder(),
//         ),
//       ),
//       title: Text(
//         itemDetailsModel.title,
//         style: AppStyles.styleRegular16(context),
//         maxLines: 1,
//         overflow: TextOverflow.ellipsis,
//       ),
//       trailing: Text(
//         itemDetailsModel.percentage,
//         style: AppStyles.styleMedium16(context),
//         maxLines: 1,
//         overflow: TextOverflow.ellipsis,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetailsCard extends StatelessWidget {
  final IncomeDetailsModel itemDetailsModel;

  const IncomeDetailsCard({super.key, required this.itemDetailsModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: itemDetailsModel.color,
              shape: BoxShape.circle,
            ),
          ),

          const SizedBox(width: 12),

          // Title
          Expanded(
            child: Text(
              itemDetailsModel.title,
              style: AppStyles.styleRegular16(context).copyWith(
                color: Colors.grey[700], // softer label tone
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),

          const SizedBox(width: 8),

          // Percentage
          Text(
            itemDetailsModel.percentage,
            style: AppStyles.styleMedium16(context).copyWith(
              fontWeight: FontWeight.w600, // stronger emphasis
            ),
          ),
        ],
      ),
    );
  }
}
