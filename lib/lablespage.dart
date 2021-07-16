import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class LabelsPage extends StatelessWidget {
  File image;

  LabelsPage({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Labels Page'),
      ),
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: FileImage(image),
                fit: BoxFit.fill,
              ),
            ),
            child: new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
              child: new Container(
                decoration:
                    new BoxDecoration(color: Colors.grey.withOpacity(0.3)),
              ),
            ),
          ),
          Positioned.fill(child: Container()),//map

          Positioned(
              top: 0,
              child: MaterialButton(
                onPressed: () {},
                minWidth: 25.0,
                color: Colors.black,
                // padding: EdgeInsets.symmetric(
                //   vertical: 12.0,
                // ),
                child: Text(
                  "Top",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              )
          ),
          Positioned(
              left: 10,
              child: MaterialButton(
                onPressed: () {},
                minWidth: 25.0,
                color: Colors.black,
                // padding: EdgeInsets.symmetric(
                //   vertical: 12.0,
                // ),
                child: Text(
                  "Left",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              )
          ),
          Positioned(
              right: 10,
              child: MaterialButton(
                onPressed: () {},
                minWidth: 25.0,
                color: Colors.black,
                // padding: EdgeInsets.symmetric(
                //   vertical: 12.0,
                // ),
                child: Text(
                  "Right",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              )
          ),
          Positioned(
              bottom: 0,
              child: MaterialButton(
                color: Colors.black,
                onPressed: () {},
                minWidth: 25.0,
                // padding: EdgeInsets.symmetric(
                //   vertical: 12.0,
                // ),
                child: Text(
                  "Bottom",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.white,
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
