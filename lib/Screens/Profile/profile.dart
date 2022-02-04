import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:q_check/Screens/Profile/profile_editing.dart';
import 'package:q_check/Screens/account_pages/login.dart';
import 'package:q_check/model/user_model.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = UserModel.fromMap(value.data());
      // nameEditingController.text = '${loggedInUser.firstName} ${loggedInUser.lastName}';
      // addressEditingController.text = '${loggedInUser.address}';
      // emailEditingController.text = '${loggedInUser.email}';
      // designationEditingController.text = '${loggedInUser.preference}';
      // numberEditingController.text = '${loggedInUser.contactNumber}';
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                logout(context);
              },
              icon: Icon(Icons.logout_rounded))
        ],
        backgroundColor: Color(0xFF135821),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      key: _formKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF135821),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Color(0x00C52121),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 10),
                  child: Text(
                    '${loggedInUser.firstName}',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline1,
                      fontSize: 28,
                      color: Color(0xFFFFFAFA),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 15,
                child: Container(
                  width: double.infinity,
                  height: 800,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                    color: Color(0xFFEEEEEE),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Padding(
                        //   padding: EdgeInsetsDirectional.fromSTEB(65, 5, 0, 0),
                        //   child: Text(
                        //     'Full Name',
                        //     textAlign: TextAlign.start,
                        //     style: GoogleFonts.poppins(
                        //       textStyle: Theme.of(context).textTheme.bodyText1,
                        //       fontSize: 10,
                        //       color: Color(0xFF404040),
                        //     ),
                        //   ),
                        // ),

                        Padding(
                          padding: const EdgeInsets.all(25),
                          child: Text(
                            'Profile Details',
                            style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.overline,
                              fontSize: 22,
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(30, 0, 30, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 10, 5),
                                child: Icon(
                                  Icons.person_outline,
                                  color: Colors.black,
                                  size: 24,
                                ),
                              ),
                              Text(
                                '${loggedInUser.firstName}',
                                style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyText1,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Address ---->

                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(30, 0, 30, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 10, 5),
                                child: Icon(
                                  Icons.location_on,
                                  color: Colors.black,
                                  size: 24,
                                ),
                              ),
                              Text(
                                '${loggedInUser.address}',
                                style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyText1,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Email ---->

                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(30, 0, 30, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 10, 5),
                                child: Icon(
                                  Icons.mail_rounded,
                                  color: Colors.black,
                                  size: 24,
                                ),
                              ),
                              Text(
                                '${loggedInUser.email}',
                                style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyText1,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Designation ---->

                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(30, 0, 30, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 10, 5),
                                child: Icon(
                                  Icons.open_with,
                                  color: Colors.black,
                                  size: 24,
                                ),
                              ),
                              Text(
                                '${loggedInUser.preference}',
                                style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyText1,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Phone ---->

                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(30, 0, 30, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 10, 5),
                                child: Icon(
                                  Icons.phone_sharp,
                                  color: Colors.black,
                                  size: 24,
                                ),
                              ),
                              Text(
                                '${loggedInUser.contactNumber}',
                                style: GoogleFonts.poppins(
                                  textStyle:
                                      Theme.of(context).textTheme.bodyText1,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        ),

                        //Button

                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 110, vertical: 32),
                          child: Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: const Color(0xFF135821),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          ProfileUpdation()), // 4
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.edit,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Edit details',
                                    style: GoogleFonts.poppins(
                                        textStyle: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                        fontSize: 18,
                                        // fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // the logout function
  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Login()));
  }
}
