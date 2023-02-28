import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PercentWhell extends StatelessWidget {
  const PercentWhell({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircularPercentIndicator(
            animation: true,
            animationDuration: 500,
            radius: 300,
            lineWidth: 40,
            percent: 0.5,
            progressColor: Colors.deepPurple,
            backgroundColor: Colors.deepPurple.shade100,
            circularStrokeCap: CircularStrokeCap.round,
            center: const Text(
              "40%",
              style: TextStyle(fontSize: 70),
            ),
          ),
          LinearPercentIndicator(
            animation: true,
            animationDuration: 500,
            lineHeight: 10,
            percent: 0.5,
            progressColor: Colors.deepPurple,
            backgroundColor: Colors.deepPurple.shade200,
            barRadius: Radius.circular(40),
            leading: Icon(Icons.arrow_circle_right),
            trailing: Icon(Icons.arrow_back_ios),
          )
        ],
      ),
    );
  }
}
