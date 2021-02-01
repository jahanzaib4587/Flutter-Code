import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:master_card_ui/widgets/data.dart';

import 'CardDeatails.dart';

class CardLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.topLeft,
          child: Text(
            'Selected Card',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (cntext, i) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                      color: primarycolor,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: customShadow,
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                            bottom: -180,
                            top: 110,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white38,
                                shape: BoxShape.circle,
                                boxShadow: customShadow,
                              ),
                            )),
                        Positioned.fill(
                            left: -100,
                            bottom: -100,
                            top: -100,
                            right: 150,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white38,
                                shape: BoxShape.circle,
                                boxShadow: customShadow,
                              ),
                            )),
                        CardDetails(),
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
