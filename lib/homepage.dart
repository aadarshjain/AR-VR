import 'dart:io';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:humac/bluetooth.dart';
import 'package:image_picker/image_picker.dart';
import 'package:system_settings/system_settings.dart';
import 'lablespage.dart';

class HomePage extends StatefulWidget {
  //final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'HuMaC_EIE',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        // actions: [
        //   TextButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     child: Text('Log Out', style: TextStyle(color: Colors.amber)),
        //   ),
        // ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
              constraints: BoxConstraints.expand(),
              //width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/homepagebackground.png'),
                  fit: BoxFit.cover,
                ),
              ),
              //),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 216.0,
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment(0.75, 0.0),
                      child: ClipOval(
                        child: Material(
                          color: Colors.amber,
                          child: InkWell(
                            splashColor: Colors.amberAccent,
                            onTap: ()
                            // {
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => camerapage()));
                            // },
                            async {
                              File _image;
                              final image = await ImagePicker.platform
                                  .pickImage(
                                  source: ImageSource.camera);

                              this.setState(() {
                                _image = File(image!.path);
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) =>
                                        LabelsPage(image: _image)));
                              });

                            },

                            child: SizedBox(
                                width: 65,
                                height: 65,
                                child: Icon(Icons.add_a_photo_outlined,
                                    color: Colors.black)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment(0.85, 0.0),
                      child: ClipOval(
                        child: Material(
                          color: Colors.amber,
                          child: InkWell(
                            //splashColor: Colors.amberAccent,
                            onTap: () {},
                            child: SizedBox(
                                width: 65,
                                height: 65,
                                child: Icon(
                                  Icons.document_scanner_outlined,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment(0.55, 0.0),
                      child: ClipOval(
                        child: Material(
                          color: Colors.amber,
                          child: InkWell(
                            //splashColor: Colors.amberAccent,
                            onTap: () => SystemSettings.bluetooth(),
                            child: SizedBox(
                                width: 65,
                                height: 65,
                                child: Icon(
                                  Icons.bluetooth,
                                  color: Colors.black,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

//
// Container(
// child: Align(
// alignment: Alignment.topLeft,
// child: ClipOval(
// child: Material(
// color: Colors.amber,
// child: InkWell(
// splashColor: Colors.amberAccent,
// //onTap: () {},
// child: SizedBox(
// width: 56,
// height: 56,
// child: Icon(Icons.add_a_photo_outlined)),
// ),
// ),
// ),
// ),
// ),
