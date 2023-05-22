import 'package:flutter/material.dart';
import 'package:khelonawala/pages/state_page.dart';

class CategoryCard extends StatelessWidget {
  String sName;
  String sImage;
  CategoryCard({
    super.key,
    required this.sName,
    required this.sImage,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => StatePage(sName:sName)));
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            elevation: 50,
            shadowColor: Colors.grey[700],
            child: CircleAvatar(
              backgroundImage: AssetImage(sImage),
              backgroundColor: Color.fromARGB(0, 23, 22, 22),
              radius: 45,
            ),
          ),
        ),
        Text(
          sName,
          style: TextStyle(color: Colors.black),
        ),
      ],
    );
  }
}
