import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (!kIsWeb && (Platform.isAndroid || Platform.isIOS)) {
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
      );
    }
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gamestore',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 10, 194, 38),
          title: Text('mon titre'),
        ),
      ),
    );
  }
}
