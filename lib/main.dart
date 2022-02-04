import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:q_check/Screens/account_pages/create_account2.dart';
import 'package:q_check/Screens/account_pages/login.dart';
import 'package:q_check/Screens/bottomnavigation/bottomnav.dart';
import 'package:q_check/scan_menu.dart';
import 'package:q_check/Screens/spices/spices.dart';
import 'package:q_check/splash_screen.dart';
import 'package:q_check/test.dart';
import 'package:q_check/tfltetest.dart';
import 'Screens/account_pages/create_account1.dart';
import 'Screens/account_pages/forget_password.dart';
import 'Screens/Home/menu_page.dart';
import 'Screens/spices/spices_info.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SpicesMenu(),
    );
  }
}
