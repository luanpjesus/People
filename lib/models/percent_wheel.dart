import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PercentWhell extends StatefulWidget {
  const PercentWhell({super.key});

  @override
  State<PercentWhell> createState() => _PercentWhellState();
}

class _PercentWhellState extends State<PercentWhell> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircularPercentIndicator(
              animation: true,
              animationDuration: 500,
              radius: 200,
              lineWidth: 40,
              percent: (_currentSliderValue.roundToDouble()) / 100,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade100,
              circularStrokeCap: CircularStrokeCap.round,
              center: Text(
                "${_currentSliderValue.round().toString()}%",
                style: TextStyle(fontSize: 70),
              ),
            ),
            Slider(
                value: _currentSliderValue,
                max: 100,
                divisions: 10,
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                    print("object");
                  });
                }),
            LinearPercentIndicator(
              animation: true,
              animationDuration: 500,
              lineHeight: 30,
              percent: (_currentSliderValue.roundToDouble()) / 100,
              progressColor: Colors.deepPurple,
              backgroundColor: Colors.deepPurple.shade200,
              barRadius: Radius.circular(40),
              leading: Icon(Icons.arrow_circle_right),
              trailing: Icon(Icons.arrow_back_ios),
            )
          ],
        ),
      ),
    );
  }
}
