import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:khelonawala/seller/product_details_screen.dart';

import '../models/Toys.dart';
import 'account_page.dart';
import 'category_page.dart';
import 'home_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List pages = [
    const HomePage(),
    const CategoryPage(),
    const AccountPage(),
    const ProductDetailsScreen(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex], //pages[0],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Color.fromARGB(255, 63, 98, 65),
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: true,
        //backgroundColor: Color.fromARGB(255, 63, 98, 65),
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              label: "Categories", icon: Icon(Icons.category_outlined)),
          BottomNavigationBarItem(
              label: "My Account", icon: Icon(Icons.person_2_outlined)),
          BottomNavigationBarItem(label: "Add Items", icon: Icon(Icons.add)),
        ],
      ),
    );
  }
}
