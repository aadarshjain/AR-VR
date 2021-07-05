import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'lablespage.dart';


class HomePage extends StatefulWidget{
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
      ),
      body:
      Stack(
        fit: StackFit.expand,
        children: [
          Container(
              constraints: BoxConstraints.expand(),
              //width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage('assets/homepagebackground1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              //),
              child :Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SizedBox(
                    height: 64.0,
                  ),
                  Container(
                    child: Align(
                      alignment: Alignment(0.88, 3.3),
                      child: ClipOval(
                        child: Material(
                          color: Colors.amber,
                          child: InkWell(
                            //splashColor: Colors.amberAccent,
                            onTap: () async {
                              File _image;
                              final image = await ImagePicker.platform.pickImage(
                                  source: ImageSource.camera);

                              setState(() {
                                _image = image as File;
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LabelsPage(image : _image)));
                              });

                              //var _image = _image;
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => LabelsPage(image : _image)));
                            },

                            child: SizedBox(
                                width: 70,
                                height: 70,
                                child: Icon(Icons.add_a_photo_outlined,
                                    color: Colors.black)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),

                  Container(
                    child: Align(
                      alignment: Alignment(0.99, -0.3),
                      child: ClipOval(
                        child: Material(
                          color: Colors.amber,
                          child: InkWell(
                            //splashColor: Colors.amberAccent,
                            onTap: () {},
                            child: SizedBox(
                                width: 70,
                                height: 70,
                                child: Icon(Icons.document_scanner_outlined,
                                  color: Colors.black,)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
          ),
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
