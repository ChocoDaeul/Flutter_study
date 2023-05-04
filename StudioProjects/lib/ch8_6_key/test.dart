import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : MyListWidget()
    );
  }
}
class MyListWidget extends StatefulWidget {
  @override
  State<MyListWidget> createState() => _MyListWidgetState();
}

class _MyListWidgetState extends State<MyListWidget> {
  List<Widget> widgetList = [
    MyColorItemWidget(Colors.redAccent, key: UniqueKey(),),
    MyColorItemWidget(Colors.blueAccent, key: UniqueKey(),),
  ];
  onChange() {
    print(widgetList.elementAt(0));
    setState(() {
      widgetList.insert(1, widgetList.removeAt(0));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switching Colors"),
      ),
      body: Column(
        children: [
          Row(children: widgetList,),
          ElevatedButton(onPressed: onChange, child: Text('Change')),
        ],
      ),
    );
  }
}

class MyColorItemWidget extends StatefulWidget {
  Color color;
  MyColorItemWidget(this.color, {Key? key}) : super(key: key);
  @override
  State<MyColorItemWidget> createState() => _MyColorItemWidgetState(color);
}

class _MyColorItemWidgetState extends State<MyColorItemWidget> {
  Color color;
  _MyColorItemWidgetState(this.color);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: color,
          width: 150,
          height: 150,
        ),
    );
  }
}


