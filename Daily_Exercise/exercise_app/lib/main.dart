import 'package:exercise_app/widgets/Bottom_Nav_Bar.dart';
import 'package:exercise_app/widgets/Category_Card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BottomNavBar(
              title: "Today",
              svgSrc: "assets/images/calendar.svg",
              press: () {},
            ),
            BottomNavBar(
              title: "All Exercises",
              svgSrc: "assets/images/gym.svg",
              press: () {},
              isActive: true,
            ),
            BottomNavBar(
              title: "Settings",
              svgSrc: "assets/images/Settings.svg",
              press: () {},
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEBB),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      child: Icon(Icons.menu),
                      decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Good Morning\n  Jahanzaib",
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        .copyWith(fontWeight: FontWeight.w900),
                  ),
                ),
                // SizedBox(
                //   height: 20,
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.search),
                            hintText: "Search Here",
                            border: InputBorder.none,
                          ),
                        ),
                      )),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    childAspectRatio: 0.9,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    children: [
                      CategoryCard(
                        svgSrc: "assets/images/Hamburger.svg",
                        title: "Diet Recommendation",
                        press: () {},
                      ),
                      CategoryCard(
                        svgSrc: "assets/images/Excrecises.svg",
                        title: "Kegel Exercise",
                        press: () {},
                      ),
                      CategoryCard(
                        svgSrc: "assets/images/Meditation.svg",
                        title: "Meditation",
                        press: () {},
                      ),
                      CategoryCard(
                        svgSrc: "assets/images/yoga.svg",
                        title: "Yoga",
                        press: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
