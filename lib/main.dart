import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:my_to_dos/pages/home_page.dart';

void main() async {
  // init the hive
  await Hive.initFlutter('mybox');

  // open a box
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.yellow,
        useMaterial3: false,
      ),
      home: const HomePage(),
    );
  }
}