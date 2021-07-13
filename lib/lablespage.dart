import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class LabelsPage extends StatelessWidget {

  File image;
  LabelsPage({required this.image});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('Labels Page'),
    ),

      body: Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          image: DecorationImage(
            image: FileImage(image),
            fit: BoxFit.fill,
          ),
        ),
        child: new BackdropFilter(
          filter: new ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
          child: new Container(
            decoration: new BoxDecoration(color: Colors.black26.withOpacity(0.3)),
          ),
        ),
      ),
    );
  }
}
