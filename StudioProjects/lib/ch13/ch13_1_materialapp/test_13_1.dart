import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}    

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.black,
        ),
      ),
    home : Scaffold(
    appBar : AppBar(
    title : Text('Material Test'),
    ),
  body: Center(
    child: Column(
      children: [
        ElevatedButton(onPressed: (){}, child: Text('Button'),),
        Checkbox(value: true, onChanged: (value){}),
        Text('Hello'),
      ],
    ),
  ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    ));
  }
}
