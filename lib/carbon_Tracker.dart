import 'package:carbon/bar/bar_graph.dart';
import 'package:flutter/material.dart';

class carbon_tracker extends StatefulWidget {
  const carbon_tracker({super.key});

  @override
  State<carbon_tracker> createState() => _carbon_trackerState();
}

class _carbon_trackerState extends State<carbon_tracker> {
  List<double>weekly_emission = [
    28.5,
    29.3,
    30.5,
    50.3,
    21.5,
    45.3,
    23.48,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            "Carbon Footprint Tracker",
            style: TextStyle(
                color: Colors.white, fontSize: 16,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
        ),
      body: Co_BarGraph(),


    );
  }
}
