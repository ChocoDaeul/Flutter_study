import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  onPressed() {
    print('icon button click...');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gesture Test"),
        ),
        body: Column(children: [
          GestureDetector(
            child: Image.asset('images/icon/user.png'),
            onTap: () {
              print('image click...');
            },
            onVerticalDragStart: (DragStartDetails details) {
              print(
                'vertical drag start...global position : '
                    '${details.globalPosition.dx},'
                    '${details.globalPosition.dy}');
              print(
                  'vertical drag start...global position : '
                      '${details.globalPosition.dx},'
                      '${details.globalPosition.dy}');

            },
          ),
          ElevatedButton(onPressed: () {
            print('ElevatedButton click....');
          }, child: Text('Click Me'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          ),)
        ],),
      ),
    );
  }
}
