import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:foodapp/screen/course_screen.dart';

class HomeScreen extends StatelessWidget {


  List catNames= [
    "Category",
    "Classes",
    "Free Course",
    "BookStore",
    "Live Course",
    "LeaderBoard"
  ];

  List<Color> catColor= [
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D),
    Color(0xFF61BDFD),
    Color(0xFFCBB4FB),
    Color(0xFFFC7F7C),
    Color(0xFF78E667),
  ];

  List<Icon> catIcons= [
    Icon(Icons.category,size: 30,color: Colors.white,),
     Icon(Icons.video_library,size: 30,color: Colors.white,),
     Icon(Icons.assignment,size: 30,color: Colors.white,),
     Icon(Icons.store,size: 30,color: Colors.white,),
     Icon(Icons.play_circle_fill,size: 30,color: Colors.white,),
     Icon(Icons.emoji_events,size: 30,color: Colors.white,)
  ];

  List imageList = [
    "Flutter",
    "React Native",
    "Python",
    "Csharp"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15,right: 15,bottom: 10,top: 15),
            decoration: BoxDecoration(
             color: Color.fromARGB(255, 110, 45, 231),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Padding(padding: EdgeInsets.only(left: 3,bottom: 15),
                child: Text("Hi, Programmer",style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2
                ),
                ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5,bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Here.....",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5)
                      ),
                      prefixIcon: Icon(Icons.search,size: 25,)
                    ),
                  ),

                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 20),
          child: Column(
            children: [

              GridView.builder(
                
                itemCount: catNames.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.1
              ),
              itemBuilder: (context,index){
                return Column(
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: catColor[index],
                        shape: BoxShape.circle
                      ),
                      child: Center(
                        child: catIcons[index ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(catNames[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.7)
                    ),)
                  ],
                );
              },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Text("Courses",style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold
                    ),),
                     Text("See All",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 110, 45, 231),
                    ),)
                ],
              ),
              GridView.builder(
                itemCount: imageList.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                
                childAspectRatio: (MediaQuery.of(context).size.height-50-25)/(4*240),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10
              ), itemBuilder: (BuildContext context, int index) { 
                return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CourseScreen(imageList[index])));
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFF5F3FF)
                      ),
                      child: Column(
                        children: [
                          Padding(padding: EdgeInsets.all(10),
                          child: Image.asset("assets/images/${imageList[index]}.png",width: 200,height: 100 ,),),
                          SizedBox(height: 10,),
                          Text(imageList[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.8)
                          ),
                          ),
                          SizedBox(height: 10,),
                          Text(
                            "55 videos",
                            style: TextStyle(
                              color: Colors.black.withOpacity(0.5),
                              fontWeight: FontWeight.w500
                            ),
                          )

                        ],
                      ),
                    ),
                );
               },)
            ],
          ),)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color.fromARGB(255, 110, 45, 231),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.assignment),label: "Course"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Wishlist"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
      ]),
    );
  }
}