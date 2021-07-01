

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'MY HOME',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Align(
                  alignment: Alignment(-0.4, 0.0),
                  child: ClipOval(
                    child: Material(
                      color: Colors.amber,
                      child: InkWell(
                        splashColor: Colors.amberAccent,
                        onTap: () async {
                          File _image;

                          final image = await ImagePicker.platform.pickImage(
                              source: ImageSource.camera);
                          _image = image as File;
                        },
                        child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Icon(Icons.add_a_photo_outlined)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Container(
                child: Align(
                  alignment: Alignment.center,
                  child: ClipOval(
                    child: Material(
                      color: Colors.amber,
                      child: InkWell(
                        splashColor: Colors.amberAccent,
                        onTap: () {},
                        child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Icon(Icons.bluetooth)),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Container(
                child: Align(
                  alignment: Alignment(0.4, 0.0),
                  child: ClipOval(
                    child: Material(
                      color: Colors.amber,
                      child: InkWell(
                        splashColor: Colors.amberAccent,
                        onTap: () {},
                        child: SizedBox(
                            width: 60,
                            height: 60,
                            child: Icon(Icons.document_scanner_outlined)),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
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
