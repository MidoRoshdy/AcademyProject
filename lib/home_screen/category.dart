import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("category"),
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
            onTap: () {
              Navigator.of(context).pushNamed("home_screen");
            },
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
          ),
          ListTile(
            title: Text(
              "Log out",
              style: TextStyle(fontSize: 18),
            ),
            leading: Icon(Icons.exit_to_app),
          )
        ]),
      ),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: <Widget>[
          InkWell(
            child: Container(
                child: Card(
              child: Column(
                children: [
                  Expanded(
                      child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRLsNjVyHAd64VX07TAVqy90RAvT0nmzjsV5lWAlyw&s",
                    fit: BoxFit.cover,
                  )),
                  Text(
                    "BMW ",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            )),
            onTap: () {
              Navigator.of(context).pushNamed("bmw");
            },
          ),
          Container(
              child: Card(
            child: Column(
              children: [
                Expanded(
                    child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/9/90/Mercedes-Logo.svg/800px-Mercedes-Logo.svg.png",
                  fit: BoxFit.cover,
                )),
                Text(
                  "Mercedes ",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          )),
          Container(
              child: Card(
            child: Column(
              children: [
                Expanded(
                    child: Image.network(
                  "https://www.carlogos.org/logo/Renault-logo-2015-2048x2048.png",
                  fit: BoxFit.cover,
                )),
                Text(
                  "Renault ",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          )),
          Container(
              child: Card(
            child: Column(
              children: [
                Expanded(
                    child: Image.network(
                  "https://di-uploads-pod5.dealerinspire.com/triplejsaipan/uploads/2018/05/HyundaiLogoStacked_4cblk-1024x659.gif",
                  fit: BoxFit.cover,
                )),
                Text(
                  "Hyundai  ",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          )),
          Container(
              child: Card(
            child: Column(
              children: [
                Expanded(
                    child: Image.network(
                  "https://1000logos.net/wp-content/uploads/2019/12/Mazda_Logo.png",
                  fit: BoxFit.cover,
                )),
                Text(
                  "Mazda ",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          )),
          Container(
              child: Card(
            child: Column(
              children: [
                Expanded(
                    child: Image.network(
                  "https://global.toyota/pages/global_toyota/mobility/toyota-brand/emblem_ogp_001.png",
                  fit: BoxFit.cover,
                )),
                Text(
                  "Toyota ",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          )),
          Container(
              child: Card(
            child: Column(
              children: [
                Expanded(
                    child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSol_6O_rxzoaXAYucYd-YiBLdKo1J4HHRWhDdysCMj&s",
                  fit: BoxFit.cover,
                )),
                Text(
                  "Honda ",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
