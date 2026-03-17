import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/dashboard_view.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Dashboard ',

      home: DashboardView(),
    );
  }
}
