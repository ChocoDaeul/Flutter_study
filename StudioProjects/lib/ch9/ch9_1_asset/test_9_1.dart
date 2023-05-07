import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //애셋 이용을 위한 rootBundle 제공

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // rootBundle을 이용해 애셋 파일을 읽어 반환하는 함수
  // Future는 비동기 데이터를 의미하며 이후에 자세히 다룸
  Future<String> useRootBundle() async {
    return await rootBundle.loadString('assets/text/my_text.txt');
  }
  // DefaultAssetBundle을 이용해 애셋 파일을 읽어 반환하는 함수
  Future<String> useDefaultAssetBundle(BuildContext context) async {
    return await DefaultAssetBundle.of(context).loadString('assets/text/my_text.txt');
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test'),
        ),
        body: Column(
          children: [
            Image.asset('images/icon.jpg'),
            Image.asset('images/icon/user.png'),
            //FutureBuilder는 비동기 데이터를 이용해 화면을 구성하는 위젯
            FutureBuilder(future: useRootBundle(),
                builder: (context, snapshot){  //useRootBundle() 함수 호출
                                               //useRootBundle() 함수의
                                               //결과값이 snapshot에 전달되며
                                               //이 값으로 화면을 구성
                  return Text('rootBundle : ${snapshot.data}');
                }),
            FutureBuilder(
              future: useDefaultAssetBundle(context),
              builder: (context,snapshot) {
                return Text('DefaultAssetBundle : ${snapshot.data}');
              },
            )
          ],
        ),
      ),
    );
  }
}


