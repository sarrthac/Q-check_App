import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

class FoeniculumVulgare extends StatefulWidget {
  const FoeniculumVulgare({Key? key}) : super(key: key);

  @override
  State<FoeniculumVulgare> createState() => _FoeniculumVulgareState();
}

class _FoeniculumVulgareState extends State<FoeniculumVulgare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF135821),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
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
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0x00C52121),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 10),
                  child: Text(
                    'Foeniculum Vulgare (Saunf)',
                    style: GoogleFonts.poppins(
                      textStyle: Theme.of(context).textTheme.headline1,
                      fontSize: 19.0,
                      color: Color(0xFFFFFAFA),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                elevation: 15,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 800,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                        height: 50,
                        thickness: 2,
                        indent: 120,
                        endIndent: 120,
                        color: Color(0xFF135821),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(45, 0, 45, 0),
                        child: Container(
                          width: double.infinity,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFAFA),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Color(0xFFFFFAFA),
                              width: 1,
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/foeniculum_vulgare.jpg',
                            width: double.infinity,
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(45, 10, 45, 0),
                        child: Container(
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Color(0xFFFFFAFA),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: Colors.black,
                              width: 1,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            child: Text(
                              'Common name: Fennel, Saunf\nBiological source: Dried ripe fruit\nFamily: Umbelliferae\nMain phytochemical constituent(s): Essential oil (trans-anethole, fenchone, estragole)\nMedicinal uses: In treatment of food poisoning and stomach disorders, to induce menstruation and enhance milk flow in breast-feeding mothers. It is also used as carminative, stimulant, expectorant etc.\nOther uses: As a flavoring agent, a smell as well as an insect repellent. \nMonograph – Foeniculum vulgare [Quality Standards of Indian Medicinal Plants. Published by Indian Council of Medical Research, New Delhi (2015) Vol. 13, pp. 254-63.\n',
                              textAlign: TextAlign.left,
                              style: GoogleFonts.poppins(
                                textStyle:
                                    Theme.of(context).textTheme.bodyText1,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
