import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:humac/homepage.dart';
import 'package:external_app_launcher/external_app_launcher.dart';

class zoom_meeting extends StatefulWidget {
  const zoom_meeting({Key? key}) : super(key: key);

  @override
  _zoom_meetingState createState() => _zoom_meetingState();
}

class _zoom_meetingState extends State<zoom_meeting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
          'Zoom Meetings',
          style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              SizedBox(
                height: 216.0,
              ),
                MaterialButton(
                  color: Colors.amber,
                  onPressed: () {},
                  minWidth: 250.0,
                  //splashColor: Colors.red[800],
                  //color: Colors.red,
                  padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                  ),

                  child: Text(
                    "Aakash Shelke",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: 216.0,
                ),
                Container(
                  width: 250,
                  height: 50,
                  color: Colors.amber,
                  child : InkWell(

                    onTap: ()
                    async {
                      await LaunchApp.openApp(
                          androidPackageName: url,
                          openStore: false
                      );
                    },
                    child: Text(
                      "Harsh P",
                      style: TextStyle(

                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
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

