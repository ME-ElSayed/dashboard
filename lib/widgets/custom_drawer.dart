import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          UserInfoListTile(
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
            imagePath: Assets.imagesAvatar3,
          ),
          SizedBox(height: 8,),
        ],
      ),
    );
  }
}
