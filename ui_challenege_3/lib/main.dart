import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            color: Colors.red,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 130, horizontal: 10),
              height: MediaQuery.of(context).size.height * 0.28,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Little Butterfly",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        ListTile(
                          title: Text("Product Designer"),
                          subtitle: Text("Jahanzaib"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                "285",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[800],
                                ),
                              ),
                              Text(
                                "Likes",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "3025",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[800],
                                ),
                              ),
                              Text(
                                "Comments",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "650",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[800],
                                ),
                              ),
                              Text(
                                "Favourites",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[800],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 120, horizontal: 30),
            height: 100,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow[400]),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 100),
            child: Column(
              children: [
                ListTile(
                  title: Text("Email"),
                  subtitle: Text("Jahanzaib4587@gmail.com"),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
