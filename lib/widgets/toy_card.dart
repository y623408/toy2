import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:khelonawala/models/toys.dart';
import 'package:khelonawala/pages/toys_page.dart';

class ToyCard extends StatelessWidget {
  Toys toy;
  String sName;
  ToyCard({super.key, required this.toy, required this.sName});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ToysPage(
                          state: sName,
                          toy: toy,
                        )));
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 10,
            shadowColor: Colors.grey[700],
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              child: Image.asset(
                toy.image,
                height: size.height/5,
                width: size.width/2,
                fit: BoxFit.cover,
              ),
              /*CircleAvatar
              backgroundImage: AssetImage(toy.image),
              backgroundColor: Color.fromARGB(0, 23, 22, 22),
              radius: 45,*/
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text(
          toy.title,
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
