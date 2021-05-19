import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  final imageurl =
      'https://d338t8kmirgyke.cloudfront.net/icons/icon_pngs/000/004/088/original/user.png';

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountEmail: Text('bishtmanish@gmail.com'),
                accountName: Text('Manish'),
                currentAccountPicture: Image.network(imageurl),
              )),
          ListTile(
            leading: Icon(CupertinoIcons.profile_circled, color: Colors.black),
            title: Text(
              'Profile ',
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.black),
            title: Text(
              'Home ',
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.mail, color: Colors.black),
            title: Text(
              'Email ',
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.settings, color: Colors.black),
            title: Text(
              'Setting ',
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.book, color: Colors.black),
            title: Text(
              'About Us ',
              textScaleFactor: 1.2,
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
