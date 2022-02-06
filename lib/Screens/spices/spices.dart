import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:q_check/scan_menu.dart';
import 'package:q_check/tfltetest.dart';

class SpicesMenu extends StatefulWidget {
  SpicesMenu({Key? key}) : super(key: key);

  @override
  _SpicesMenuState createState() => _SpicesMenuState();
}

class _SpicesMenuState extends State<SpicesMenu> {
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
              // mainAxisSize: MainAxisSize.max,
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
                    'Q - Check Spices',
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
                        LabelText: 'Piper nigrum\n(Kali Mirch)',
                        ImagePath: 'assets/images/piper nigrum.png',
                        builder: ModelTest(),
                      ),
                      card_widget(
                        LabelText: 'Embelia ribes\n(Awala)',
                        ImagePath: 'assets/images/curcuma_longa.jpg',
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
                        LabelText: 'Carica papaya\n(Papaya)',
                        ImagePath: 'assets/images/Carica papaya.jpg',
                        builder: ModelTest(),
                      ),
                      card_widget(
                        LabelText: 'Schinus mole\n(False Pepper)',
                        ImagePath: 'assets/images/schinus_mole.jpg',
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
                        LabelText: 'Vitex agnus castus\n(Chaste berry)',
                        ImagePath: 'assets/images/vitex_agnus _castus.jpg',
                        builder: ModelTest(),
                      ),
                      card_widget(
                        LabelText: 'Curcuma longa\n(Haldi)',
                        ImagePath: 'assets/images/curcuma_longa.jpg',
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
                        LabelText: 'Curcuma amada\n(Amba Haldi)',
                        ImagePath: 'assets/images/curcuma_amada.png',
                        builder: ModelTest(),
                      ),
                      card_widget(
                        LabelText: 'Curcuma cesia\n(Kali Haldi)',
                        ImagePath: 'assets/images/curcuma_cesia.png',
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
                        LabelText: 'Curcuma zeoderia\n(Karchur)',
                        ImagePath: 'assets/images/curcuma_zeoderia.png',
                        builder: ModelTest(),
                      ),
                      card_widget(
                        LabelText: 'Amomum sublatum\n(Badi Elaichi)',
                        ImagePath: 'assets/images/amomum_sublatum.jpg',
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
                        LabelText: 'Citurs sinensis\n(Orange)',
                        ImagePath: 'assets/images/citrus_sinensis.png',
                        builder: ModelTest(),
                      ),
                      card_widget(
                        LabelText: 'Elettaria cardamomum\n(Elaichi)',
                        ImagePath: 'assets/images/elettaria_cardamomum.png',
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
                        LabelText: 'Capsicum annum\n(Mirch)',
                        ImagePath: 'assets/images/capsicum_annum.jpg',
                        builder: ModelTest(),
                      ),
                      card_widget(
                        LabelText: 'Foeniculum vulgare\n(Saunf)',
                        ImagePath: 'assets/images/foeniculum_vulgare.jpg',
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
                        LabelText: 'Anethum graveolens\n(Till)',
                        ImagePath: 'assets/images/anethum_graveolens.png',
                        builder: ModelTest(),
                      ),
                      card_widget(
                        LabelText: 'Carum carvi\n(Shahi Jeera)',
                        ImagePath: 'assets/images/carum_carvi.png',
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
                        LabelText: 'Nigel sativa\n(Mangerela)',
                        ImagePath: 'assets/images/nigella_sativa.jpeg',
                        builder: ModelTest(),
                      ),
                      card_widget(
                        LabelText: 'Cuminum cyminum\n(Jeera)',
                        ImagePath: 'assets/images/elettaria_cardamomum.png',
                        builder: ModelTest(),
                      ),
                    ],
                  ),
                )

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



/*

 Original Widget

 GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ModelTest()),
                          );
                        },
                        child: Material(
                          color: Colors.transparent,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                            width: 125,
                            height: 180,
                            decoration: BoxDecoration(
                              color: Color(0xFFE2E0E0),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 1,
                                  color: Color(0xFF222222),
                                  offset: Offset(1, 1),
                                  spreadRadius: 0.5,
                                )
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.network(
                                    'https://picsum.photos/seed/143/600',
                                    width: 125,
                                    height: 110,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 15, 0, 0),
                                  child: Text(
                                    'Name',
                                    style: GoogleFonts.poppins(
                                      textStyle:
                                          Theme.of(context).textTheme.bodyText1,
                                      color: Color(0xFF2B2B2B),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
*/