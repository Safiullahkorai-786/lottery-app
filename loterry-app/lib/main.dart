import 'package:flutter/material.dart';
import 'package:lottery_app/lottery_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: LotteryApp(), debugShowCheckedModeBanner: false);
  }
}
