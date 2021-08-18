import 'package:flutter/material.dart';
import 'package:flutter_first/moviespage.dart';

class NavigationDrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xff3C3636),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            menuItem(
                text: 'All Films',
                icon: Icons.people,
                onClicked: () => selectedItem(context, 0)),
            menuItem(
              text: 'Category',
              icon: Icons.people,
            )
          ],
        ),
      ),
    );
  }
}

Widget menuItem(
    {required String text, required IconData icon, VoidCallback? onClicked}) {
  final color = Colors.white;
  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color, fontSize: 26)),
    onTap: onClicked,
  );
}

void selectedItem(BuildContext context, int index) {
  switch (index) {
    case 0:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Movies(),
      ));
      break;
    case 1:
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Movies(),
      ));
      break;
    default:
  }
}
