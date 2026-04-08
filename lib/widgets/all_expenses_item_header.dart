import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: isActive
                      ? Colors.white.withValues(alpha: 0.10)
                      : const Color(0xFFFAFAFA),
                  shape: OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    imagePath,
                    colorFilter: ColorFilter.mode(
                      isActive ? Colors.white : Color(0xff4EB7F2),
                      BlendMode.srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

        Expanded(child: SizedBox()),
        Icon(
          Icons.keyboard_arrow_right,
          color: (isActive) ? Colors.white : const Color(0xFF064060),
          size: 24,
        ),
      ],
    );
  }
}
