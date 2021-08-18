import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first/widgets/rechome.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<First> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff161616),
      ),
      drawer: Drawer(
        child: Container(
          color: const Color(0xff161616),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
                child: ListTile(
                  leading: Icon(
                    Icons.cancel,
                    size: 40.0,
                    color: Colors.white,
                  ),
                  onTap: () {
                    //bapak
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.movie,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  title: Text(
                    'All Movies',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => AllRecipes(),
                    //   ),
                    // );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.category,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Category',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => FavRecipes(),
                    //   ),
                    // );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                child: ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    size: 30.0,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Account',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    //Bapak
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: const Color(0xff161616),
          child: Column(
            children: <Widget>[
              Container(
                child: GestureDetector(
                  onTap: () {
                    //bapak
                  },
                  child: Container(
                    width: size.width * 1,
                    height: size.height * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/cover.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 30, 0, 30),
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Recommended Movies",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              ItemCards()
            ],
          ),
        ),
      ),
    );
  }
}
