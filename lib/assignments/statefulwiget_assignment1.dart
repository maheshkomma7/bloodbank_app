import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      body: SafeArea(
        child: MyStatefulWiget(),
      ),
    )),
  );
}

class MyStatefulWiget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyStatefulstate();
  }
}

class MyStatefulstate extends State<MyStatefulWiget> {
  int myNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(right: 60, left: 40, top: 40),
                      child: Text(
                        "Sarita Blood Bank",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 120, top: 10),
                      child: Container(
                        alignment: Alignment.center,
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white60),
                        child: Container(
                          height: 15,
                          width: 15,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Color.fromARGB(255, 2, 116, 59)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Blood Group",
                          style:
                              TextStyle(color: Colors.redAccent, fontSize: 20),
                        ),
                        Text(
                          "B +ve",
                          style: TextStyle(fontSize: 30),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text("Add Units"),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                if (myNumber > 0) ...[
                                  ElevatedButton(
                                      onPressed: onPressedMinus,
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white60),
                                      child: Text("-"))
                                ] else ...[
                                  SizedBox()
                                ],
                                 Text(myNumber.toString()),
                                if (myNumber < 9) ...[
                                  ElevatedButton(
                                      onPressed: onPressedPlus,
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white60),
                                      child: Text("+"))
                                ] else ...[
                                  SizedBox()
                                ],
                              ],
                            ),
                          ),
                        ),
                      ]))
            ],
          ),
          if(myNumber>8)...[
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.red),
              child: Text("You have reached maximum unit limit",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
            )
          ]
        ],
      ),
    );
  }

  void onPressedMinus() {
    setState(() {
      if (myNumber > 0) {
        myNumber = myNumber - 1;
      }
    });
    print("Pressed - sign : " + myNumber.toString());
  }

  void onPressedPlus() {
    setState(() {
      if (myNumber < 9) {
        myNumber = myNumber + 1;
      }
    });
    print("Pressed + sign : " + myNumber.toString());
  }
}
