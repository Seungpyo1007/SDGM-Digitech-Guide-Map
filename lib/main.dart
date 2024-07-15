import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'LoginMenu/login_page.dart'; // 경로는 실제 파일 경로로 변경하세요

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
