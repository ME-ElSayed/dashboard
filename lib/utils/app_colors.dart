import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  static const Color primaryColor = Color(0xFF4EB7F2);

  static Color scaffoldBackground(BuildContext context) {
    return Theme.of(context).scaffoldBackgroundColor;
  }

  static Color surface(BuildContext context) {
    return Theme.of(context).colorScheme.surface;
  }

  static Color surfaceAlt(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? const Color(0xFF1E293B)
        : const Color(0xFFFAFAFA);
  }

  static Color border(BuildContext context) {
    return Theme.of(context).dividerColor;
  }

  static Color primaryText(BuildContext context) {
    return Theme.of(context).colorScheme.onSurface;
  }

  static Color secondaryText(BuildContext context) {
    return Theme.of(context).colorScheme.secondary;
  }

  static Color iconOnSurface(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? const Color(0xFFE2E8F0)
        : const Color(0xFF064060);
  }
}