import 'package:flutter/material.dart';
import 'package:khelonawala/constants.dart';
import 'package:khelonawala/widgets/toy_card.dart';

import '../models/toys.dart';

class StatePage extends StatefulWidget {
  String sName;
  StatePage({super.key, required this.sName});

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: Text(widget.sName),
        backgroundColor: Color.fromARGB(255, 63, 98, 65),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding,vertical: kDefaultPadding),
        child: GridView.builder(
          itemCount: toys.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: kDefaultPadding,
            crossAxisSpacing: kDefaultPadding,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (BuildContext context, index) => ToyCard(
            toy: toys[index],sName:widget.sName,
            ),
          ),
        ),
      );
  }
/*
  Widget buildCategory(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: GestureDetector(
        onTap: (){
          setState(() {
            selectedIndex=index;
          });
        },
        child: Column(
          children: [
            
          ],
        ),
      ),
    );
  }
  */
}
