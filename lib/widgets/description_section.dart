import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DescriptionSection extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Text("Software engineering is the branch of computer science that deals with the design, development, testing, and maintenance of software applications. Software engineers apply engineering principles and knowledge of programming languages to build software solutions for end users.",style: TextStyle(
            fontSize: 16,
            color: Colors.black.withOpacity(0.7)
          ),
          textAlign: TextAlign.justify ,),
          SizedBox(height: 20),
          Row(
            children: [
               Text("Course Length :",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(width: 5,),
              Icon(Icons.timer,color: Color.fromARGB(255, 110, 45, 231)),
              SizedBox(width: 5,),
              Text("26 Hours",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800
              ),)
            ],
          ),
          SizedBox(height: 10,),
           Row(
            children: [
              Text("Rating :",
              style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold
              ),),
              Icon(Icons.star,color: Colors.amber),
              SizedBox(height: 5,),
              Text("4.5",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800
              ),)
            ],
          ),
        ],
      ),
    );
  }
}