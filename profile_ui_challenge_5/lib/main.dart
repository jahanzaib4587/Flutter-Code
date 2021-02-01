import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color color1 = Color(0xffFC5CF0);
    final Color color2 = Color(0xffFE8852);
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.6,
          //width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
              gradient: LinearGradient(
                colors: [color1, color2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.09,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.arrow_back, color: Colors.white),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7,
                    ),
                    Icon(Icons.notifications, color: Colors.white),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.menu, color: Colors.white),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0, top: 50),
                child: Container(
                    margin: EdgeInsets.symmetric(vertical: 100, horizontal: 30),
                    height: MediaQuery.of(context).size.height * 0.9,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/ITALY.jpg",
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
              Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 50,
                  ),
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "World Tour Buddy",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 140,
                      ),
                      height: 35,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "3.7mi away",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      )),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 370,
                ),
                child: Column(
                  children: [
                    Text(
                      "Sasha-22",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.pin_drop),
                        Text(
                          "San, Diego, California, USA",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 40, left: 10, right: 10),
          //height: MediaQuery.of(context).size.height * 0.1,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.instagram,
                    size: 50,
                  ),
                  onPressed: null),
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.facebook,
                    size: 50,
                  ),
                  onPressed: null),
              IconButton(
                  icon: Icon(
                    FontAwesomeIcons.twitter,
                    size: 50,
                  ),
                  onPressed: null)
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 80, left: 10, right: 10),
          height: MediaQuery.of(context).size.height * 0.1,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: LinearGradient(
                colors: [color1, color2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: null),
              IconButton(
                  icon: Icon(
                    Icons.pin_drop,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: null),
              SizedBox(
                width: 80,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.transparent,
                  ),
                  child: Icon(
                    FontAwesomeIcons.heart,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
              IconButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: null),
              IconButton(
                  icon: Icon(
                    Icons.message,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: null),
            ],
          ),
        ),
      ],
    ));
  }
}
