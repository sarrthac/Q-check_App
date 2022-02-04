import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:q_check/Screens/Home/help_info.dart';
import 'package:q_check/Screens/account_pages/login.dart';
import 'package:q_check/model/user_model.dart';

class LogoutPage extends StatefulWidget {
  LogoutPage({Key? key}) : super(key: key);

  @override
  State<LogoutPage> createState() => _LogoutPageState();
}

class _LogoutPageState extends State<LogoutPage> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(
                Icons.logout,
              ),
              onPressed: () {
                logout(context);
              },
              iconSize: 80,
            ),
            Text(
              'Logout',
              style: GoogleFonts.poppins(
                textStyle: Theme.of(context).textTheme.headline1,
                fontSize: 28,
                color: Colors.black38,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }

  //Logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Login()));
  }
}
