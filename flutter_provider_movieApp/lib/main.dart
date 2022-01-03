import 'package:flutter/material.dart';
import 'package:flutter_provider/src/home.dart';
import 'package:flutter_provider/src/provider/bottom_navigation_provider.dart';
import 'package:flutter_provider/src/provider/count_provider.dart';
import 'package:flutter_provider/src/provider/movie_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}
// void main() {
//   runApp(ChangeNotifierProvider(
//     create: (BuildContext context) => CountPorovider(),
//     child: MyApp(),
//   ));
// }
// 이렇게도 가능

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (BuildContext context) => CountProvider()),
          ChangeNotifierProvider(create: (BuildContext context) => BottomNavigationProvider()),
          ChangeNotifierProvider(create: (BuildContext context) => MovieProvider()),

        ],
      
        child: Home(), // child 하위에 있는 위젯들은 count_provider에 접근 가능하게 됨
      ),
    );
  }
}
