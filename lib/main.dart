import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:q_check/Screens/account_pages/create_account2.dart';
import 'package:q_check/Screens/account_pages/login.dart';
import 'package:q_check/Screens/bottomnavigation/bottomnav.dart';
import 'package:q_check/Screens/herbs/herbs.dart';
import 'package:q_check/Screens/spices/eliachi.dart';
import 'package:q_check/Screens/spices/spices_details/haldi.dart';
import 'package:q_check/Screens/spices/spices_details/jeera.dart';
import 'package:q_check/Screens/spices/spices_details/mirch.dart';
import 'package:q_check/Screens/spices/spices_details/papaya.dart';
import 'package:q_check/Screens/spices/spices_details/santara.dart';
import 'package:q_check/Screens/spices/spices_details/saunf.dart';
import 'package:q_check/scan_menu.dart';
import 'package:q_check/Screens/spices/spices.dart';
import 'package:q_check/splash_screen.dart';
import 'package:q_check/test.dart';
import 'package:q_check/tfltetest.dart';
import 'Screens/account_pages/create_account1.dart';
import 'Screens/account_pages/forget_password.dart';
import 'Screens/Home/menu_page.dart';
import 'Screens/spices/spices_details/Kali_mirch.dart';
import 'Screens/spices/spices_info_template.dart';

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
      home: CaricaPapaya(),
    );
  }
}
