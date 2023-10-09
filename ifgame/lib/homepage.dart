import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ifgame/barries.dart';

import 'character.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static double astroYaxis = 0.0;
  double time = 0.0;
  double height = 0.0;
  double initialHeight = 0.0;
  bool gameStarted = false;

  void jump() {
    setState(() {
      time = 0;
      initialHeight = astroYaxis;
    });
  }

  void startGame() {
    gameStarted = true;
    Timer.periodic(Duration(milliseconds: 60), (timer) {
      time += 0.05;
      height = -4.9 * time * time + 2.8 * time;
      setState(() {
        astroYaxis = initialHeight - height;
      });
      if (astroYaxis > 1) {
        timer.cancel();
        gameStarted = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (gameStarted) {
                        jump();
                      } else {
                        startGame();
                      }
                    },
                    child: AnimatedContainer(
                      alignment: Alignment(0, astroYaxis),
                      duration: const Duration(milliseconds: 0),
                      color: Colors.blue,
                      child: const Character(),
                    ),
                  ),
                  Container(
                    alignment: const Alignment(0, -0.5),
                    child: gameStarted
                        ? const Text('')
                        : const Text(
                            'TAP TO PLAY',
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                  ),
                  AnimatedContainer(
                      alignment: Alignment(0,1.1),
                      duration: Duration(milliseconds: 0),
                      child: Barrier(
                        size: 200.0,
                      ),),
                  AnimatedContainer(
                      alignment: Alignment(0,-1.1),
                      duration: Duration(milliseconds: 0),
                      child: Barrier(
                        size: 150.0,
                      ),),
                ],
              )),
          Container(
            height: 15,
            color: Colors.green,
          ),
          Expanded(
            child: Container(
              color: Colors.brown,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'ESCORE',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '0',
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'BEST ESCORE',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '10',
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
