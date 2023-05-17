import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home : Scaffold(
    appBar : AppBar(
    title : Text('Inherited Test'),
    ),
  body: MyInheritedWidget(TestWidget()),
    ));
  }
}

class MyInheritedWidget extends InheritedWidget {
  int count = 0;

  MyInheritedWidget(child) : super(child: child);

  increment() {
    count++;
  }
  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) => true;

  static MyInheritedWidget? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>();
}

class TestSubWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    int count = MyInheritedWidget.of(context)!.count;
    return Container(
    width: 200,
    height: 200,
      color: Colors.yellow,
      child: Text(
        'SubWidget : $count',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// MyInheritedWidget의 하위 위젯
class TestWidget extends StatelessWidget {
  TestWidget() {
    print('TestWidget constructor...');
  }

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          MyInheritedWidget? widget = MyInheritedWidget.of(context);
          int counter = MyInheritedWidget.of(context)!.count;
          Function increment = MyInheritedWidget.of(context)!.increment;
          return Center(
            child: Container(
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'TestWidget : $counter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  ElevatedButton(
                    child: Text('increment()'),
                    onPressed: () => setState(() => increment()),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() => widget!.count++);
                    },
                    child: Text('count++'),
                  ),
                  TestSubWidget()
                ],
              ),
            ),
          );
        }
    );
  }
}
