import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:q_check/Screens/Home/menu_page.dart';
import 'package:q_check/Screens/Profile/profile.dart';
import 'package:q_check/Screens/Search/search.dart';
import 'package:q_check/tfltetest.dart';

class HerbsMenu extends StatefulWidget {
  HerbsMenu({Key? key}) : super(key: key);

  @override
  _HerbsMenuState createState() => _HerbsMenuState();
}

class _HerbsMenuState extends State<HerbsMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              color: Color(0xFF104E0B),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Image.asset(
                    'assets/images/DST_withBack.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: Text(
                    'Q - Check Herbs',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.bodyText1,
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/splash_logo.png',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      card_widget(
                        LabelText: 'Polyalthia longifolia\n(False Asoka)',
                        ImagePath: 'assets/images/ployalthia_longifolia.jpg',
                        builder: ModelTest(),
                      ),
                      card_widget(
                        LabelText: 'Saraca asoca\n(Ashoka bark)',
                        ImagePath: 'assets/images/saraca_asoca.jpg',
                        builder: ModelTest(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      card_widget(
                        LabelText: 'Pergularia daemia\n(False Giloy)',
                        ImagePath: 'assets/images/giloy.jpg',
                        builder: ModelTest(),
                      ),
                      card_widget(
                        LabelText: 'Tinospora cordifolia\n(Giloy)',
                        ImagePath: 'assets/images/giloy.jpg',
                        builder: ModelTest(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// Card Widget

class card_widget extends StatelessWidget {
  final String? LabelText;
  final String? ImagePath;
  Widget builder;
  // Function router();

  card_widget(
      {@required this.LabelText,
      @required this.ImagePath,
      required this.builder});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("pressed");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => builder),
        );
      },
      child: Material(
        color: Colors.transparent,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          width: 140,
          height: 200,
          decoration: BoxDecoration(
            color: Color(0xFFE2E0E0),
            boxShadow: const [
              BoxShadow(
                blurRadius: 1,
                color: Color(0xFF222222),
                spreadRadius: 0.3,
              )
            ],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  ImagePath!,
                  width: 140,
                  height: 125,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10, 15, 0, 0),
                child: Text(
                  LabelText!,
                  style: GoogleFonts.poppins(
                    textStyle: Theme.of(context).textTheme.bodyText1,
                    color: Color(0xFF2B2B2B),
                    fontSize: 13
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}