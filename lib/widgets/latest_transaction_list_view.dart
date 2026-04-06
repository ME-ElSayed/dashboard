import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
      image: Assets.imagesAvatar1,
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar2,
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail.com',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar3,
      name: 'Madrani Andi',
      email: 'Madraniadi20@gmail.com',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 72,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) =>
            IntrinsicWidth(child: UserInfoListTile(userInfo: items[index])),
      ),
    );
  }
}
