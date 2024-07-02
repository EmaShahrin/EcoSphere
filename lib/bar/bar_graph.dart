import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Co_BarGraph extends StatelessWidget {
  const Co_BarGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart (BarChartData(
      maxY: 100,
      minY:0,
    ),
    );
  }
}
