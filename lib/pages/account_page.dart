import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:khelonawala/constants.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Account"),
        backgroundColor: Color.fromARGB(255, 63, 98, 65),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Column(children: [
            SizedBox(
              width: 120,
              height: 120,
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black),borderRadius: BorderRadius.circular(100)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Icon(Icons.person),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Yashraj",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(
              "y623408@gmail.com",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 63, 98, 65),
                      side: BorderSide.none,
                      shape: StadiumBorder()),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Settings(
              label: 'My Orders',
              icn: Icon(Icons.abc),
            ),
            Settings(
              label: 'Payment Modes',
              icn: Icon(Icons.card_membership),
            ),
            Settings(
              label: 'Account Settings',
              icn: Icon(Icons.account_box),
            ),
            Settings(
              label: 'Address Settings',
              icn: Icon(Icons.travel_explore),
            ),
            Settings(
              label: 'Help Center',
              icn: Icon(Icons.help),
            ),
            Settings(
              label: 'Terms and Conditions',
              icn: Icon(Icons.document_scanner),
            ),
          ]),
        ),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  String label;
  Icon icn;
  Settings({super.key, required this.label, required this.icn});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color.fromARGB(255, 63, 98, 65).withOpacity(0.1),
        ),
        child:
            icn, /*Icon(
          ,
          color: Colors.black54,
        ),*/
      ),
      title: Text(label),
      trailing: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
