import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodapp/screen/home_screen.dart';

class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1.6,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 110, 45, 231),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(70))
              ),
              child: Center(
                child: Image.asset("assets/images/book.png",scale: 0.7 ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.66,
                decoration: BoxDecoration(
                   color: Color.fromARGB(255, 110, 45, 231)
                ),
              ),
            ),
             Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.66,
                padding: EdgeInsets.only(top: 40,bottom: 30),
                decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.only(topLeft: Radius.circular(70))
                ),
                child: Column(
                   children: [
                    Text(
                      "Learning is Everyting",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                        wordSpacing: 2
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 45),
                    
                    child: Text(
                      "Learning with Pleasure with Dear Programmer, Wherever you are.",
                      textAlign: TextAlign.center
                      ,style: TextStyle(fontSize: 17,color: Colors.black.withOpacity(0.6)),
                    ),
                    ),
                    SizedBox(height: 60,),
                    Material(
                          color: Color.fromARGB(255, 110, 45, 231),
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 15,horizontal: 80
                              ),
                              child: Text(
                                "Get Start",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1
                                ),
                              ),
                            ),
                          ),
                    )
                   ],
                ),
              ),
            )
          ],
          
        ),
        
      ),
    );
  }
}