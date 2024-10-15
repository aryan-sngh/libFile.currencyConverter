// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//     return Text(
//       "hello,world",
//       textDirection: TextDirection.ltr,
//     );
//   }
// }
import 'package:first_program/supportive_cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:first_program/supportive_material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SupportiveMaterial());
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(home: SupportiveCupertino());
  }
}
