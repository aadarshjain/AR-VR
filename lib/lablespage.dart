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

      body: Center(

          child: image == null ? Text("Image is not loaded") : Image.file(image)
      ),
    );
  }
}
