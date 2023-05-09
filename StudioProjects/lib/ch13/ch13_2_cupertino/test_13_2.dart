import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget platformUI() {
    if(Platform.isIOS) {
      return CupertinoApp(
        debugShowCheckedModeBanner: false,
        theme: CupertinoThemeData(brightness: Brightness.light),
        home: CupertinoPageScaffold(
          navigationBar:
          CupertinoNavigationBar(middle: Text('Cupertino Title'),),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CupertinoButton(child: Text('Click'), onPressed: (){}),
              Center(
                child: Text('HelloWorld'),
              ),
            ],
          ),
        ),
      );
    }
    else if (Platform.isAndroid)
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home : Scaffold(
    appBar : AppBar(
    title : Text('Test'),
    ),

    ));
  }
}
