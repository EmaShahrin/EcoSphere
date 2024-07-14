import 'package:carbon/carbonTracker.dart';
import 'package:carbon/HomeScreen/HomePg.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Profile",style: TextStyle(color: Colors.white)),

        centerTitle: true,
      ),




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
            Navigator.push(context, MaterialPageRoute(builder: (context)=>CarbonTracker()));
          }
          if(index==2){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
          }
        },
      ),

    );
  }
}
