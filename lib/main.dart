import 'package:belajar_flutter/Ambildata/ambildata_model.dart';
import 'package:belajar_flutter/button.dart';
import 'package:belajar_flutter/list_word.dart';
import 'package:belajar_flutter/login_ui.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('StartupNamer'),
        ),
        body: Text('Halo dunia!'),
      ),
    );
  }
}
