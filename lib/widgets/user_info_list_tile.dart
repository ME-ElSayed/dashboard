import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  const UserInfoListTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Color(0xffFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(imagePath),
        title: Text(title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(subtitle, style: AppStyles.styleRegular12(context)),
      ),
    );
  }
}
