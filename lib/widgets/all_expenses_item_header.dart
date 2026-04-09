import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_colors.dart';

class AllExpensesItemHeader extends StatelessWidget {
  final bool isActive;
  final String imagePath;

  const AllExpensesItemHeader({
    super.key,
    required this.imagePath,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: isActive
                      ? Colors.white.withValues(alpha: 0.10)
                      : AppColors.surfaceAlt(context),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    imagePath,
                    colorFilter: ColorFilter.mode(
                      isActive
                          ? Colors.white
                          : AppColors.iconOnSurface(context),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Expanded(child: SizedBox()),
        Icon(
          Icons.keyboard_arrow_right,
          color: isActive
              ? Colors.white
              : AppColors.iconOnSurface(context),
          size: 24,
        ),
      ],
    );
  }
}