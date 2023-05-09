import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //디버그 배너 해제
        home: Scaffold(
          appBar: AppBar(
            title: Text('Switch Test'),
          ),
          body: TestScreen(),
        ));
  }
}

class TestScreen extends StatefulWidget {
  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool? isChecked = true;
  String? selectPlatform;
  double sliderValue = 5.0;
  bool switchValue = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Checkbox Test'),
        Column(
          children: [
            Row(
              children: [
                Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value;
                      });
                    }),
                Text('checkbox value is $isChecked'),
                Spacer(),
              ],
            ),
          ],
        ),
        Text('Radio Test'),
        Row(
          children: [
            Radio(
              value: "android",
              groupValue: selectPlatform,
              onChanged: (String? value) {
                setState(() {
                  selectPlatform = value;
                });
              },
            ),
            Text('android')
          ],
        ),
        Row(
          children: [
            Radio(
              value: "ios",
              groupValue: selectPlatform,
              onChanged: (String? value) {
                setState(() {
                  selectPlatform = value;
                });
              },
            ),
            Text('ios')
          ],
        ),
        Text('select platform is $selectPlatform'),
        Text(''),
        Text('Slider Test'),
        Slider(
            value: sliderValue,
            min: 0,
            max: 10,
            onChanged: (double value) {
              setState(() {
                sliderValue = value;
              });
            }),
        Text('slider value is $sliderValue'),
        SizedBox(
          height: 30,
        ),
        Text('Switch Test'),
        Switch(
            value: switchValue,
            onChanged: (bool value) {
              setState(() {
                switchValue = value;
              });
            }),
        Text('select value is $switchValue'),
      ],
    );
  }
}
