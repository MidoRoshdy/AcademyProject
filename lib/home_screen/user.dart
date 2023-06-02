import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class user extends StatefulWidget {
  const user({super.key});

  @override
  State<user> createState() => _user();
}

class _user extends State<user> {
  List<Map<dynamic, dynamic>> user = [
    {
      'id': '1',
      "name": 'mohamed',
      'email': 'moh.roshdy@gmail.com',
      'number': '01030324294',
      'image':
          'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    },
    {
      'id': '2',
      "name": 'ali',
      'email': 'ali@gmail.com',
      'number': '01030423294',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROOroSoNF0BqYoPtqAClUy53hW_1KT5DorpjTKC2oB&s',
    },
    {
      'id': '3',
      "name": 'hassan',
      'email': 'hassan@gmail.com',
      'number': '01150324294',
      'image':
          'https://st2.depositphotos.com/1662991/8837/i/450/depositphotos_88370500-stock-photo-mechanic-wearing-overalls.jpg'
    },
    {
      'id': '4',
      "name": 'mohsen',
      'email': 'mohsen@gmail.com',
      'number': '01035676294',
      'image':
          'https://www.shutterstock.com/image-photo/young-handsome-man-beard-wearing-260nw-1768126784.jpg',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: user.length,
        itemBuilder: (context, index) {
          Map<dynamic, dynamic> item = user[index];
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
                                  item["id"],
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
                                      "name : ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54),
                                    ),
                                    Text(item["name"],
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Email :",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54),
                                    ),
                                    Text(item["email"],
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "number :  ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54),
                                    ),
                                    Text(item["number"],
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey))
                                  ],
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
      ),
    );
  }
}
