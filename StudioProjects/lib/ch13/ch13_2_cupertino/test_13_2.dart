import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

void main() {
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget platformUI() {
    if(Platform.isAndroid) {
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
    else if (Platform.isIOS) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material Title'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(onPressed: (){},
                  child: Text('Click'),),
              Center(
                child: Text('Hello World'),
              ),
            ],
          ),
        ),
      );
    } else {
      return Text(
        'unKnown Device',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return platformUI();
  }
}
