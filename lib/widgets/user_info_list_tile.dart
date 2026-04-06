import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel userInfo;
  const UserInfoListTile({super.key, required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfo.image, width: 40, height: 40),
        title: Text(userInfo.name, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(
          userInfo.email,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
