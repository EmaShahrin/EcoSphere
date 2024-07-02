import 'package:carbon/bar/weekly_emission.dart';

class bar_data {
  final double sun_emission;
  final double mon_emission;
  final double tue_emission;
  final double wed_emission;
  final double thu_emission;
  final double fri_emission;
  final double sat_emission;

  bar_data({
    required this.sun_emission,
    required this.mon_emission,
    required this.tue_emission,
    required this.wed_emission,
    required this.thu_emission,
    required this.fri_emission,
    required this.sat_emission,
  });

  List<weekly_emission>barData = [];

  //initialize bar_data
  void initializeBarData() {
    barData = [
      weekly_emission(x: 0, y: sun_emission),
      weekly_emission(x: 0, y: mon_emission),
      weekly_emission(x: 0, y: tue_emission),
      weekly_emission(x: 0, y: wed_emission),
      weekly_emission(x: 0, y: thu_emission),
      weekly_emission(x: 0, y: fri_emission),
      weekly_emission(x: 0, y: sat_emission),


    ];
  }


}