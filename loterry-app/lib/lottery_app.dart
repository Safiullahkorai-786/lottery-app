import 'package:flutter/material.dart';
import 'dart:math';

class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});

  @override
  State<LotteryApp> createState() => _LotteryAppState();
}

class _LotteryAppState extends State<LotteryApp> {
  Random random = Random();
  int y = 6;
  int x = 0;
  int totals = 0;
  int wins = 0;
  int loses = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottery App"),
        // backgroundColor: Colors.blue.shade50,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: "Your Lucky Number is ",
                style: TextStyle(fontSize: 20, color: Colors.black),
                children: [
                  TextSpan(
                    text: "$y",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: x == y ? Colors.green.shade50 : Colors.red.shade50,
                border: Border.all(
                  color: x == y ? Colors.green.shade400 : Colors.red.shade400,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child:
                  x == y
                      ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.done_all_outlined,
                            color: Colors.green,
                            size: 40,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Your number is $x",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Congratulations!!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                      : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.clear, color: Colors.red, size: 40),
                          SizedBox(height: 10),
                          Text(
                            "Your number is $x",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            "Try Again!!",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.emoji_events_outlined,
                    color: Colors.green,
                    size: 22,
                  ),
                  Text(
                    "Wins : ",
                    style: TextStyle(
                      color: Colors.green[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "$wins",
                    style: TextStyle(
                      color: Colors.green[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    " | ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.thumb_down_alt_outlined,
                    color: Colors.red,
                    size: 19,
                  ),
                  Text(
                    "Loses : ",
                    style: TextStyle(
                      color: Colors.red[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "$loses",
                    style: TextStyle(
                      color: Colors.red[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    " | ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.celebration_outlined, color: Colors.red, size: 19),
                  Text(
                    "Totals : ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "$totals",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: x == y ? Colors.green.shade100 : Colors.red.shade100,
        onPressed: () {
          totals++;
          x == y ? y = random.nextInt(10) : x = random.nextInt(10);

          if (x == y) {
            wins++;
          } else {
            loses++;
          }
          setState(() {});
        },
        child: Icon(
          x == y ? Icons.refresh : Icons.refresh,
          color: x == y ? Colors.green[900] : Colors.red[900],
        ),
      ),
    );
  }
}
