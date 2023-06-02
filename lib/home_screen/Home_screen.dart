import 'category.dart';
import 'package:carousel_images/carousel_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../search screen/search.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey[700],
            title: const Text("Car Gallary"),
            centerTitle: true,
            elevation: 6,
          ),
          drawer: Drawer(
            child: ListView(children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("mohamed"),
                accountEmail: Text("moh.roshdy1990@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvAGWhPgFu742XWqbu4v0zjk9jOr6LpAvlvpkSLabxtFXk-oR2f2aeF8A1xnIA4j2ANgE&usqp=CAU"),
                        fit: BoxFit.cover)),
              ),
              ListTile(
                title: Text(
                  "Home Page",
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text(
                  "Users",
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(Icons.supervised_user_circle_sharp),
                onTap: () {
                  Navigator.of(context).pushNamed("user");
                },
              ),
              ListTile(
                title: Text(
                  "Car Types",
                  style: TextStyle(fontSize: 18),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed("category");
                },
                leading: Icon(Icons.category),
              ),
              ListTile(
                title: Text(
                  "Setting ",
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(Icons.settings),
              ),
              ListTile(
                title: Text(
                  "About App",
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(Icons.info),
                onTap: () {
                  Navigator.of(context).pushNamed("sql");
                },
              ),
              ListTile(
                title: Text(
                  "Log out",
                  style: TextStyle(fontSize: 18),
                ),
                leading: Icon(Icons.exit_to_app),
              ),
            ]),
          ),
          body: Column(
            children: <Widget>[
              Container(
                color: Colors.grey[700],
                padding: EdgeInsets.all(10),
                child: TextField(
                    decoration: InputDecoration(
                        hintText: "Find offers here",
                        hoverColor: Colors.white,
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.manage_search_sharp,
                              size: 40,
                              color: Colors.black,
                            )),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 27, vertical: 8),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40)))),
              ),
              Container(
                height: 50,
                color: Colors.grey,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "Buy ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                          ),
                        )),
                    SizedBox(
                      width: 100,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Rent",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
