import 'dart:async';

import 'package:flutter/material.dart';
import 'package:stoplight/src/color.dart';
import 'package:stoplight/src/random.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int? active;

  @override
  void initState() {
    Future.delayed(Duration.zero, _init);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 250,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 8,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var i = 0; i < 3; i++)
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 250),
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: showColors(i, active),
                            shape: BoxShape.circle,
                          ),
                        )
                    ],
                  ),
                ),
                Container(
                  width: 10,
                  height: 60,
                  color: Colors.black,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  FutureOr _init() {
    Timer.periodic(
      const Duration(milliseconds: 500),
      (t) {
        if (t.tick < 500) {
          setState(() {
            active = randomNumber();
          });
        } else {
          t.cancel();
        }
      },
    );
  }
}
