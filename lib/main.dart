import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_theme.dart';
import 'package:responsive_dashboard/utils/theme_controller.dart';
import 'package:responsive_dashboard/views/dashboard_view.dart';

void main() {
  runApp( const ResponsiveDashBoard());
  // runApp(
  //   DevicePreview(
  //     enabled: true,
  //     builder: (context) => const ResponsiveDashBoard(),
  //   ),
  // );
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ThemeController.instance,
      builder: (context, _) {
        return MaterialApp(
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          debugShowCheckedModeBanner: false,
          title: 'Responsive admin Dashboard ',
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          themeMode: ThemeController.instance.value,
          home: const DashboardView(),
        );
      },
    );
  }
}