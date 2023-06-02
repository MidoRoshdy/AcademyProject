import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sql_conn/sql_conn.dart';
import 'dart:async';

class BMW extends StatefulWidget {
  const BMW({super.key});

  @override
  State<BMW> createState() => _BMWState();
}

class _BMWState extends State<BMW> {
  List<Map<dynamic, dynamic>> listcars = [
    {
      'name': 'BMWX6',
      'Engine_Capacity': '4400cc Turbo',
      'Number_of_horses': '530 hp',
      'torque': '750 Newton Meters',
      'price': '2,000,000',
      'image':
          'https://www.carsprite.com/storage/img/Car-Images/bmw-x6-2016-2.jpg'
    },
    {
      'name': 'BMWX5',
      'Engine_Capacity': '3000cc Turbo',
      'Number_of_horses': '530 hp',
      'torque': '750 Newton Meters',
      'price': '1,500,000',
      'image':
          'https://alwafd.news/images/thumbs/828/news/94d6ba4359e1d815dffeb4971c9814b5.jpg'
    },
    {
      'name': 'BMWX3',
      'Engine_Capacity': '3500cc Turbo',
      'Number_of_horses': '530 hp',
      'torque': '750 Newton Meters',
      'price': '1,350,000',
      'image': 'https://faharas.net/wp-content/uploads/2021/11/BMW-X6-2022.jpg'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMW Cars"),
          centerTitle: true,
        ),
        body: ListView.separated(
          itemCount: listcars.length,
          itemBuilder: (context, index) {
            Map<dynamic, dynamic> item = listcars[index];
            return InkWell(
              child: Container(
                height: 150,
                width: 100,
                child: Card(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Container(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    item["name"],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      "Detalies",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 12, 45, 134)),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Engine Capacity : ",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54),
                                      ),
                                      Text(item["Engine_Capacity"],
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "number of horses :",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54),
                                      ),
                                      Text(item["Number_of_horses"],
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "Torque :  ",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54),
                                      ),
                                      Text(item["torque"],
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.grey))
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "price : ",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black54),
                                      ),
                                      Text(item["price"],
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 170, 14, 14))),
                                    ],
                                  ),
                                  InkWell(
                                    child: Text(
                                      "more details  ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 0, 0, 0)),
                                    ),
                                    onTap: () {
                                      Navigator.of(context)
                                          .pushNamed("details");
                                    },
                                  ),
                                ],
                              ))),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Image.network(
                              item["image"].toString(),
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox();
          },
        ));
  }
}
