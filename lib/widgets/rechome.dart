import 'package:flutter/material.dart';

class ItemCards extends StatefulWidget {
  const ItemCards({Key? key}) : super(key: key);

  @override
  _ItemCardsState createState() => _ItemCardsState();
}

class _ItemCardsState extends State<ItemCards> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: const Color(0xff161616),
      child: Card(
        color: const Color(0xff161616),
        child: GestureDetector(
          onTap: () {
            //bapak
          },
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 160,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/cover.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/heri.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 160,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/maze.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 160,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("assets/images/up.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
