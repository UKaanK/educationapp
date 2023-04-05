import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodapp/screen/course_screen.dart';

class VideoSection extends StatefulWidget {
  String img;
  VideoSection(this.img);
  @override
  State<VideoSection> createState() => _VideoSectionState();
}

class _VideoSectionState extends State<VideoSection> {
  List videoList= [
    "Introduction  ",
    "Installing on Windows",
    "Setup Emulator on Windows",
    "Creting Our First App"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: videoList.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {  
          return ListTile(
            leading: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: index==0 ? Color.fromARGB(255, 110, 45, 231) : Color.fromARGB(255, 110, 45, 231).withOpacity(0.6),
                shape: BoxShape.circle
              ),
              child: Icon(Icons.play_arrow_rounded,
              color: Colors.white,size: 30,),
              
            ),
            title: Text(videoList[index]),
            subtitle: Text("20 min 50 sec"),
          );
      },

    );
  }
}