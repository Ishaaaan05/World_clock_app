import 'package:flutter/material.dart';
import 'package:flutter_1st/holder/holder.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/holder',
    routes: {
      '/holder':(context) => HolderScreen(),    
    },
  ));
}


