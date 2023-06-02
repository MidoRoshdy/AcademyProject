import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deatails"),
        centerTitle: true,
      ),
      body: ListView(children: [
        Container(
          height: 300,
          child: GridTile(
            child: Image.network(
                "https://www.carsprite.com/storage/img/Car-Images/bmw-x6-2016-2.jpg"),
            footer: Container(
              height: 32,
              color: Colors.black.withOpacity(0.3),
              alignment: Alignment.center,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      "BMW X6",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Expanded(
                    child: Text("price : 2 million",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "About car",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                child: Row(
                  children: [
                    Text(
                      "Modle : ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("BMW X6",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                color: Colors.blue[400],
                child: Row(children: [
                  Text("Engine_Capacity : ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("4400cc Turbo",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                child: Row(children: [
                  Text("Number_of_horses : ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("530 hp",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                color: Colors.blue[400],
                height: 50,
                child: Row(children: [
                  Text("torque : ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("750 Newton Meters",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ]),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                child: Row(children: [
                  Text("price : ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text("2 Million",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                ]),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
