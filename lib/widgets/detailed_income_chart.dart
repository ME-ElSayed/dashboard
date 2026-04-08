import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/chart_item.dart';
import 'package:responsive_dashboard/widgets/detailed_income_chart_body.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;

  static const List<ChartItem> _chartItems = [
    ChartItem(
      label: 'Design Service',
      percent: '40%',
      value: 40,
      color: Color(0xFF208BC7),
    ),
    ChartItem(
      label: 'Design Product',
      percent: '25%',
      value: 25,
      color: Color(0xFF4DB7F2),
    ),
    ChartItem(
      label: 'Product Royalty',
      percent: '20%',
      value: 20,
      color: Color(0xFF064060),
    ),
    ChartItem(
      label: 'Other',
      percent: '22%',
      value: 22,
      color: Color(0xFFE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final size = constraints.maxWidth;
          // Scale center hole and font relative to chart size
          final centerRadius = size * 0.22;
          final activeItem = activeIndex >= 0 ? _chartItems[activeIndex] : null;

          return Stack(
            alignment: Alignment.center,
            children: [
              PieChart(
                PieChartData(
                  centerSpaceRadius: centerRadius,
                  pieTouchData: PieTouchData(
                    enabled: true,
                    touchCallback: (_, pietouchResponse) {
                      setState(() {
                        activeIndex =
                            pietouchResponse
                                ?.touchedSection
                                ?.touchedSectionIndex ??
                            -1;
                      });
                    },
                  ),
                  sectionsSpace: 0,
                  sections: List.generate(_chartItems.length, (i) {
                    final item = _chartItems[i];
                    final isActive = activeIndex == i;
                    return PieChartSectionData(
                      title: '',
                      value: item.value,
                      color: item.color,
                      radius: isActive ? size * 0.32 : size * 0.27,
                      borderSide: isActive
                          ? BorderSide(
                              color: item.color.withOpacity(0.6),
                              width: 3,
                            )
                          : const BorderSide(color: Colors.transparent),
                    );
                  }),
                ),
              ),

              DetailedIncomeChartBody(
                centerRadius: centerRadius,
                activeItem: activeItem,
                activeIndex: activeIndex,
              ),
            ],
          );
        },
      ),
    );
  }
}
