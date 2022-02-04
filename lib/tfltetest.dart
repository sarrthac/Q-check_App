import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tflite/tflite.dart';
import 'dart:io';

class ModelTest extends StatefulWidget {
  ModelTest({Key? key}) : super(key: key);

  @override
  _ModelTestState createState() => _ModelTestState();
}

class _ModelTestState extends State<ModelTest> {
  bool _loading = true;
  File? _image;
  List? _output;
  final picker = ImagePicker();

  @override

  //Here we have to load the tflite model
  void initState() {
    //initS is the first function that is executed by default when this class is called
    super.initState();
    loadModel().then((value) {
      setState(() {});
    });
  }

  //THis is the function which runs the image on model and provide us the output
  classifyImage(File image) async {
    //this function runs the model on the image
    var output = await Tflite.runModelOnImage(
        // path: image.path,
        // numResults: 6, //the amout of categories our neural network can predict
        // threshold: 0.5,
        // imageMean: 127.5,
        // imageStd: 127.5,
        path: image.path,
        numResults: 6,
        threshold: 0,
        imageMean: 255.0,
        imageStd: 255.0);


    //Using print here just for debug purpose    
    print('AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA');
    print(_output);
    setState(() {
      _output = output;
      _loading = false;
    });
  }

  // loadModel() async {
  //   //this function loads our model
  //   await Tflite.loadModel(
  //       model: 'assets/model.tflite', labels: 'assets/labels.txt');
  // }

  //THis function loads the tflite model
  loadModel() async {
    await Tflite.loadModel(
        // model:'assets/models/fennal_model.tflite',
        // labels: 'assets/labels/fennal_labels.txt'
        //mask model.
        // model: 'assets/model_unquant.tflite', labels: 'assets/labels.txt'
       // model: 'assets/models/blackpepper_model.tflite',
       model: 'assets/models/Test_BlackPepper.tflite',
        labels: 'assets/labels/blackpepper_labels.txt'
         //model: 'assets/model.tflite', labels: 'assets/labelss.txt'
        );
  }

  //This function picks the image from gallery
  pickGalleryImage() async {
    //this function to grab the image from gallery
    var image = await picker.getImage(source: ImageSource.gallery);
    if (image == null) {
      return null;
    } else {
      _image = File(image.path);
    }
    classifyImage(_image!);
  }

 //This function is used in end to dispose the tflite model.
  @override
  void dispose() {
    //dis function disposes and clears our memory
    super.dispose();
    Tflite.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
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
      backgroundColor: const Color(0xFFF5F5F5),
      body:
          // _loading
          //  ? Container(
          //  alignment: Alignment.center,
          //  child: const CircularProgressIndicator(),
          //  ) :
          Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF135821),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              decoration: const BoxDecoration(
                color: Color(0x00C52121),
              ),
            ),
            Expanded(
              child: Material(
                color: Colors.transparent,
                elevation: 15,
                shape: const RoundedRectangleBorder(
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
                  decoration: const BoxDecoration(
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
                    children: [
                      const Divider(
                        height: 40,
                        thickness: 2,
                        indent: 120,
                        endIndent: 120,
                        color: Color(0xFF135821),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          'Please Click the imgae with White Background and keep the distance less than 1 cm.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                              textStyle: Theme.of(context).textTheme.bodyText1,
                              fontSize: 14,
                              color: Color(0xFF175122)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 250,
                          width: 250,

                          //if image is selected then it will be displyaed and if not default image will be shown
                          child: _image != null
                              ? Image.file(
                                  _image!,
                                  width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,
                                )
                              : const Image(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage('assets/images/scan_bg.png'),
                                ),
                        ),
                      ),

                      //Upload Button
                      // Padding(
                      //   padding: const EdgeInsets.symmetric(vertical: 10.0),
                      //   child: UploadButton(
                      //     labelText: 'Upload Photo',
                      //     onPressed: () {
                      //       pickImage();
                      //     },
                      //     height: 40,
                      //     width: 170,
                      //     icon: Icons.file_upload,
                      //   ),
                      // ),
                      const SizedBox(
                        height: 10,
                      ),

                      //ScanButton
                      ScanButton(
                          labelText: 'ScanButton',
                          onPressed: () {
                            pickGalleryImage();

                            // classifyImage(image!);
                          },
                          icon: Icons.qr_code_scanner,
                          height: 100,
                          width: 250),
                      SizedBox(
                        height: 5.0,
                      ),

                      //This gives us the output over screen
                      _output != null
                          ? Text((_output![0]['label']).toString().substring(2),
                              style: GoogleFonts.roboto(fontSize: 18))
                          : Text(''),
                      // ? Text(
                      //     // "${_outputs![0]["label"]}"
                      //     //     .replaceAll(RegExp(r'[0-9]'), ''),
                      //    (_output![0]['label']).toString().substring(2),
                      //     style: GoogleFonts.poppins(
                      //         textStyle:
                      //             Theme.of(context).textTheme.bodyText1,
                      //         fontSize: 14,
                      //         color: Color(0xFF175122)),
                      //   )
                      // : Container(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


   //Widgets --   
// Upload Photo Button Widget
class UploadButton extends StatelessWidget {
  // const MenuButton({
  //   Key? key,
  // }) : super(key: key);
  String labelText;
  double height;
  double width;
  void Function()? onPressed;
  IconData? icon;
  UploadButton(
      {required this.labelText,
      required this.onPressed,
      required this.height,
      required this.width,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: const Color(0xff104e0b),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: MaterialButton(
        elevation: 10,
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              labelText,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodyText1,
                  fontSize: 15,
                  // fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Icon(
              icon,
              color: Colors.white70,
              size: 28,
            ),
          ],
        ),
      ),
    );
  }
}

// Scan Photo Button Widget
class ScanButton extends StatelessWidget {
  // const MenuButton({
  //   Key? key,
  // }) : super(key: key);
  String labelText;
  double height;
  double width;
  void Function()? onPressed;
  IconData? icon;
  ScanButton(
      {required this.labelText,
      required this.onPressed,
      required this.height,
      required this.width,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: const Color(0xff104e0b),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: MaterialButton(
        elevation: 10,
        onPressed: onPressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white70,
              size: 40,
            ),
            Text(
              labelText,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  textStyle: Theme.of(context).textTheme.bodyText1,
                  fontSize: 18,
                  // fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
