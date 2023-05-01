import 'test1.dart';

main() {
  // print('$no');
  // sayHello();
  // User user = User();
  // user.sayHello();

  // String data1 = 'hello';
  // String data2 = "world";
  // String data3 = '''
  //   hello
  //   world
  //  ''';
  // String data4 = """
  //   hello
  //   world
  //  """;
  //
  // print(data1);
  // print(data2);
  // print(data3);
  // print(data4);
  //
  // String str1 = 'hello';
  // String str2 = 'hello';
  //
  // // 문자열 비교
  // print(str1 == str2); // output : true

  // int no = 10;
  // String name = 'kkang';
  //
  // String myFun() {
  //   return 'kim';
  // }
  //
  // print('no : $no, name : $name, 10 + 20 : ${10+20}, myFun() : ${myFun()}');
  // // output : no : 10, name : kkang, 10 + 20 : 30, myFun() : kim

  // // 형 변환하기
  // int n1 = 10;
  // double d1 = 10.0;
  //
  // // double d2 = n1; // 형변환 오류
  // // int n2 = d1; // 형변환 오류
  // double d2 = n1.toDouble();
  // int n2 = d1.toInt();
  // print(d2); // output : 10.0
  // print(n2); // output : 10

  // int n1 = 10;
  // String s1 = '10';
  // // 문자열 형변환
  // String s2 = n1.toString();
  // // 인트 형변환
  // int n3 = int.parse(s1);
  //
  // print(s2); // output : 10
  // print(n3); // output : 10

  // 상수 변수
  // const : 변수를 선언할 때 초깃값 대입 해야함.
  // const String data1; // 오류
  //
  // class User {
  //   static cons String data2; // 오류
  // }
  //
  // void some() {
  //   const String data3; // 오류
  // }
  // String s1 = 'hello';
  // const String s2 = 'world';
  // final String s3 = 'helloworld';
  //
  // String s4 = '$s1, $s2';
  // const String s5 = '$s2';
  // const String s6 = '$s1,$s2,$s3'; // 오류: const 변수 템플릿은 const만 들어가야함
  // final String s7 = '$s1,$s2,$s3';

  // var 와 dynamic 타입
  // var data1 = 10;
  // dynamic data2 = 10;
  // var no = 10;
  // no = 20;
  // no = 'hello'; // no 에 10을 저장해서 int 형으로 바뀜

  // dynamic 타입으로 선언
  // var no2;
  // no2 = 10;
  // no2 = 'hello';
  // no2 = true;

  // dynamic 타입 - 모든 타입 지원
  // dynamic data = 10;
  // data = 'hello';
  // data = true;

  // // 리스트 타입
  // List list1 = [10, 'hello', true];
  // list1[0] = 20;
  // list1[1] = 'world';
  // print(list1);
  // print('List : [${list1[0]}, ${list1[1]}, ${list1[2]}]');

  // // 제네릭스
  // List<int> list2 = [10,20,30];
  // // list2[0] = 'hello'; // int형만 선언하게 제네릭스로 설정했음으로 오류
  // print(list2);

  // //List 데이터 추가와 제거
  // list2.add(40);
  // list2.add(50);
  // print(list2);
  //
  // list2.removeAt(0);
  // print(list2);

  // 리스트 크기 지정하기
  // var list3 = List<int>.filled(3, 0);
  // print(list3);
  //
  // list3[0] = 10;
  // list3[1] = 20;
  // list3[2] = 30;
  // print(list3);
  //
  // list3[3] = 40; // 런타임 오류 (크기 초과)

  // // 리스트 확장 가능하게 하기
  // var list3 = List<int>.filled(3, 0, growable: true);
  // print(list3);
  //
  // list3[0] = 10;
  // list3[1] = 20;
  // list3[2] = 30;
  //
  // print(list3);
  //
  // list3.add(40);
  // print(list3);

  // 특정한 로직으로 리스트 초기화하기
  // var list4 = List<int>.generate(3, (index) => index * 10, growable: true);
  // print(list4.length);
  // print(list4);

  // Set
  // Set<int> set1 = {10,20,10};
  // print(set1);
  // set1.add(30);
  // set1.add(40);
  // print(set1);
  //
  // Set<int> set2 = Set();
  // print(set2);
  // set2.add(10);
  // set2.add(20);
  // print(set2);

  // Map
  // Map<String, String> map1 = {'one':'1','two':'2'};
  //
  // print(map1);
  // print(map1['one']);
  // map1['one'] = 'world';
  // print(map1['one']);

  // 널 불허와 널 허용 변수 선언
  // int a1 = 10; // 널 불허
  // int? a2 = 10; // 널 허용 변수 선언

  // 널 대입 차이
  // testFun() {
  //   a1 = null; // 오류
  //   a2 = null;
  // }

  //모든 타입에 적용되는 널 허용 설정
//   String str1 = null; // 오류
//   String? str2 = null;
// } // end main()
//
// class User{
//   User user1 = null; // 오류
//   User? user2 = null;
// }

  // 초기화 하지 않은 널 불허 변수 오류 발생
  // int a1; // 오류
  // int? a2;
  // print(a1); // 오류
  // print(a2);

  // 함수에서 널 불허 지역 변수 초기화
//   int a1;
//   } // end main()
// class User {
//   int a1;
// }
// testFun() {
//   int a1;
//   a1 = null;

  // 값을 대입하지 않고 사용한 예
  // testFun() {
  //   int a1;
  //   print(a1 + 10); // 오류
  // }
  // 값을 대입하고 사용한 예
  // testFun() {
  //   int a1;
  //   a1 = 10;
  //   print(a1 + 10);
  // }

  //var 타입의 널 안전성
  // var a1 = 10;
  // var a2 = null;
  // var a3;
  // // var? a4 = null; // 오류 (var 뒤에는 ? 사용 불가)
  // print(a3);

  //var 타입 변수의 널 허용 여부
  // var a1 = 10; // int
  // var a2 = null; // dynamic
  // var a3; // dynamic
  //
  // testFun() {
  //   a1 = 20;
  //   // a1 = null; // 오류 (int 형은 null 값을 가질수 없음)
  //
  //   a2 = 20;
  //   a2 = "hello";
  //   a2 = null;
  //
  //   a3 = 20;
  //   a3 = "hello";
  //   a3 = null;
  // }
  // var 타입 변수에 타입이 정의된 변수 대입하기
  // int no1 = 10; // 널 불허
  // int? no2; // 널 허용
  //
  // var a1 = no1; // int로 결정
  // var a2 = no2; // int? 로 결정
  //
  // testFun(){
  //   a1 = 20;
  //   // a1 = null; // 널 불허 변수에 널을 대입해서 오류
  //
  //   a2 = 20;
  //   // a2 = 'hello'; // int? 타입에 문자열을 대입해서 오류
  //   a2 = null;
  // }

  // //dynamic 타입의 널 허용
  // dynamic a1 = 10;
  // dynamic a2;
  // dynamic? a3; // dynamic 타입으로 선언한 것 자체가 널 허용
  //
  // testFun() {
  //   a1 = null;
  //   a2 = null;
  //   a3 = null;
  // }
  
  // // 자동 형 변환
  // int a1 = 10;
  // int? a2 = 10;
  //
  // a1 = a2; // 오류(라고 적혀있으나 지금은 되는 듯)
  // a2 = a1; // 성공
  // print(a1);
  // print(a2);

  // 명시적 형변환
  // int a1 = 10;
  // int? a2 = 20;
  //
  // a1 = a2 as int;
  // print("a1: $a1, a2: $a2");

  // // 초기화 미루기
  // int a1;
  // late int a2;
  // print(a1);
  // print(a2);

  // // 초기화를 미루는 late 연산자(값 대입하고 사용)
  // late int a2;
  //
  // a2 = 10;
  // print('${a2+10}');

  // ! 연산자 - 널 점검
  // int? a1 = 20;
  // a1!;
  // a1 = null;
  // a1!;

  // 함수 호출문에 ! 연산자 사용
//   int? some(arg){
//     if(arg == 10) {
//       return 0;
//     }
//     else {
//       return null;
//     }
//   }
//
//   int a = some(10)!;
//   print('a : $a');
//
//   int b = some(20)!; // some() 함수가 널을 반환하므로 런 타임 오류 발생
//   print('b : $b');
// }

  // 널 허용 객체의 멤버에 접근하기
  // String? str = "hello";
  //
  //
  // print(str.isEmpty); // 오류(였으나 지금은 되는것 같음)

  //널 객체의 멤버에 접근할 때 null 반환하기
  // int? no1 = 10;
  // bool? result1 = no1?.isEven;
  // print('result 1 : $result1');
  //
  // no1 = null;
  // bool? result2 = no1?.isEven;
  // print('result 2 : $result2');

  // 널 리스트에 인덱스로 접근할 때 null 반환하기
  // List<int>? list = [10,20,30];
  // print('list[0] : ${list?[0]}');
  // list = null;
  // print('list[0] : ${list?[0]}');

  // 널일 때 대입하지 않기
  // int? data3;
  // data3 ??= 10;
  // print('data3 : $data3');
  // data3 ??= null; // 널이어서 대입되지 않음
  // print('data3 : $data3');

  //널 일때 값 대체하기
  // String? data4 = 'hello';
  // String? result = data4 ?? 'world';
  // print('result : $result');
  //
  // data4 = null;
  // result = data4 ?? 'world';
  // print('result : $result');


  }




// const String data1 = 'hello';
//
// class User {
//   static const String data2 = 'hello';
//
//   void some() {
//     const String data3 = 'hello';
//
//     data1 = 'world'; // 오류
//     data2 = 'world'; // 오류
//     data3 = 'world'; // 오류
//   }
// }

// 상수 변수 - final
// final int no1; // 초깃값이나 이후에 값을 대입하지 않아서 오류
//
// class MyClass {
//   final int no2;
//   MyClass(this.no2); // 생성자에서 값을 대입하도록 함
//
//   void some() {
//     final no3;
//     no3 = 10;
//     no3 = 20; // 값을 바꿀 수 없어서 오류
//   }
// }


// 아영이가 Git을 알려줬어요
// 로아는 귀여워
