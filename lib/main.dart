import 'package:flutter/material.dart';
import 'package:saranproject/AllertDialogBox.dart';
import 'package:saranproject/Insta.dart';
import 'package:saranproject/Login.dart';
import 'package:saranproject/Login1.dart';
import 'package:saranproject/TextEditingCon.dart';
import 'package:saranproject/amazon%20navigation.dart';
import 'package:saranproject/amazon.dart';
import 'package:saranproject/amazonproduct.dart';
import 'package:saranproject/form%20validate.dart';
import 'package:saranproject/home.dart';
import 'package:saranproject/list.dart';
import 'package:saranproject/navi.dart';
import 'package:saranproject/project.dart';
import 'package:saranproject/project02.dart';
import 'package:saranproject/spotify.dart';

import 'asdf.dart';
import 'asdfg.dart';
import 'navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: spotify()
    );
  }
}

