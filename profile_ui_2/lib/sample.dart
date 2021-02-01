// import 'package:flutter/material.dart';

// class MyApp extends StatelessWidget {
//   final List<Map> collections = [
//     {"title": "Food joint", "image": ""},
//     {
//       "title": "Photos",
//       //"image":""
//     },
//     {
//       "title": "Travel",
//       //"image":""
//     },
//     {
//       "title": "Nepal",
//       //"image":""
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height * 0.35,
//             width: double.infinity,
//             decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                     colors: [Colors.indigo.shade300, Colors.indigo.shade500])),
//           ),
//           ListView.builder(
//             itemCount: 7,
//             itemBuilder: _mainListBuilder,
//           )
//         ],
//       ),
//     );
//   }

//   Widget _mainListBuilder(BuildContext context, int index) {
//     if (index == 0) return _buildHeader(context);
//     if (index == 1) return _buildSectionHeader(context);
//     if (index == 2) return _buildCollectionsRow();
//     if (index == 3) {
//       return Container(
//         color: Colors.white,
//         child: Padding(
//           padding: const EdgeInsets.only(left: 20.0, top: 20, bottom: 10),
//           child: Text(
//             "Most Liked Posts",
//             style: Theme.of(context).textTheme.headline5,
//           ),
//         ),
//       );
//     }
//     return _buildListItem();
//   }

//   Widget _buildListItem() {
//     return Container(
//       color: Colors.white,
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(5),
//         child: Text("helo"),
//       ),
//     );
//   }

//   Container _buildSectionHeader(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             "Collection",
//             style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
//           ),
//           FlatButton(
//               onPressed: () {},
//               child: Text(
//                 "Create new",
//                 style: TextStyle(color: Colors.blue, fontSize: 17),
//               ))
//         ],
//       ),
//     );
//   }

//   Container _buildCollectionsRow() {
//     return Container(
//       color: Colors.white,
//       height: 200,
//       child: ListView.builder(
//           physics: BouncingScrollPhysics(),
//           scrollDirection: Axis.horizontal,
//           itemCount: collections.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//               width: 150,
//               height: 200,
//               color: Colors.white,
//               child: Column(
//                 children: [
//                   Expanded(
//                       child: ClipRRect(
//                           borderRadius: BorderRadius.circular(16),
//                           child: Image.asset(
//                             "assets/photos/photos.jpg",
//                             fit: BoxFit.cover,
//                           ))),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text(collections[index]['title'])
//                 ],
//               ),
//             );
//           }),
//     );
//   }

//   Container _buildHeader(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(top: 60),
//       height: 250,
//       child: Stack(
//         children: [
//           Container(
//             child: Material(
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10)),
//               elevation: 5.0,
//               color: Colors.red,
//               child: Column(
//                 //crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(
//                     height: 40,
//                   ),
//                   Text(
//                     "Jahanzaib",
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Text("UI/UX designer | Foodie | Nepal"),
//                   SizedBox(
//                     height: 16,
//                   ),
//                   Container(
//                     height: 40,
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Expanded(
//                             child: ListTile(
//                           title: Text(
//                             "302",
//                             textAlign: TextAlign.center,
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           subtitle: Text(
//                             "Posts".toUpperCase(),
//                             textAlign: TextAlign.center,
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         )),
//                         Expanded(
//                             child: ListTile(
//                                 title: Text(
//                                   "10.3K",
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                                 subtitle: Text(
//                                   "Followers".toUpperCase(),
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(fontSize: 16),
//                                 ))),
//                         Expanded(
//                             child: ListTile(
//                                 title: Text(
//                                   "120",
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(fontWeight: FontWeight.bold),
//                                 ),
//                                 subtitle: Text(
//                                   "Following".toUpperCase(),
//                                   textAlign: TextAlign.center,
//                                   style: TextStyle(fontSize: 16),
//                                 )))
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Material(
//                 elevation: 5.0,
//                 shape: CircleBorder(),
//                 child: CircleAvatar(
//                   backgroundColor: Colors.red,
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
