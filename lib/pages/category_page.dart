import 'package:flutter/material.dart';
import 'package:khelonawala/models/states.dart';
import 'package:khelonawala/widgets/category_card.dart';

import '../constants.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 63, 98, 65),
        title: Text("States of India"),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 4,),
          Icon(
            Icons.favorite_outline,
            color: Colors.white,
            size: 28,
          ),
          SizedBox(width: 10,),
        ],
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(kDefaultPadding),
        child: GridView.builder(
            itemCount: states.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: kDefaultPadding,
              crossAxisSpacing: kDefaultPadding,
              childAspectRatio: 0.75,
            ),
            itemBuilder: (BuildContext context, index) {
              return CategoryCard(sName: states[index].name, sImage: states[index].image);
            }),
      ),
    );
  }
}
