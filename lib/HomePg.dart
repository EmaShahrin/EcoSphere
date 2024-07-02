import 'package:carbon/carbon_Tracker.dart';
import 'package:carbon/profile.dart';
import 'package:flutter/material.dart';

class Homepg extends StatefulWidget {
  const Homepg({super.key});

  @override
  State<Homepg> createState() => _HomepgState();
}

class _HomepgState extends State<Homepg> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text("Home Screen", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(child: Text('Content goes here')), // Placeholder content
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: Colors.transparent,
        // Set background to transparent
        elevation: 0,
        // Remove shadow under the bar

        currentIndex: 0,
        selectedItemColor: Colors.green[900],
        // Green color for selected item
        unselectedItemColor: Colors.green[900],
        // Green color for unselected items
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.green[900]),
            // Manually set icon color
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard, color: Colors.green[900]),
            // Manually set icon color
            label: "Carbon footprint tracker",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.green[900]),
            // Manually set icon color
            label: "Profile",
          ),
        ],
        onTap: (int index){
          if(index==0){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Homepg()));
          }
          if(index==1){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>carbon_tracker()));
          }
          if(index==2){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
          }
        },
      ),
    );
  }
}
