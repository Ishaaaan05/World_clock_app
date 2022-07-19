import 'package:flutter/material.dart';
import 'package:flutter_1st/UI/Alarm/alarm_screen.dart';
import 'package:flutter_1st/UI/Stopwatch/Stopwatch_screen.dart';
import 'package:flutter_1st/UI/Timer/timer_screen.dart';
import 'package:flutter_1st/UI/World%20Time/home_screen.dart';

class HolderScreen extends StatefulWidget {
  const HolderScreen({Key? key}) : super(key: key);

  @override
  State<HolderScreen> createState() => _HolderScreenState();
}

class _HolderScreenState extends State<HolderScreen> {
  int currentIndex =0;
  List<String> titles = ['World Time','Alarm','Timer','Stop Watch'];
  List<Widget> screens = [HomeScreen(),AlarmScreen(),TimerScreen(),StopWatchScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles[currentIndex]),
        backgroundColor: Colors.black,
        centerTitle: true,
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:currentIndex,
        items: const[
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_clock),
            label: 'World Time' 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.timelapse),
            label: 'Alarm' 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hourglass_bottom_rounded),
            label: 'Timer' 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_rounded),
            label: 'StopWatch' 
          )
        ],
        onTap: (value){
          currentIndex=value;
        },
      ),
    );    
  }
}