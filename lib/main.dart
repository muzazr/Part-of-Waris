// lib/main.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'welcome.dart';

void main() {
  runApp(WarisApp());
}

class WarisApp extends StatelessWidget {
  const WarisApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Waris',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        useMaterial3: false,
      ),
      home: WelcomeScreen(),
    );
  }
}
