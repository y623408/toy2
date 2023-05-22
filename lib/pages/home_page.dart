import 'package:flutter/material.dart';
import 'package:khelonawala/pages/category_page.dart';

import 'account_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pages = [
    const HomePage(),
    const CategoryPage(),
    const AccountPage(),
  ];
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 63, 98, 65),
        title: Text("Local Toy is here"),
        actions: [
          Icon(
            Icons.search_sharp,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: 4,),
          Icon(
            Icons.favorite_border_sharp,
            color: Colors.white,
            size: 28,
          ),
          SizedBox(width: 10,)
        ],
      ),
      body://Container()/*
          Image.asset(
              "assets/images/logo.jpeg",
              width: size.width,
              //height: 100,
              fit: BoxFit.cover,
            ), /*bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label: "Categories", icon: Icon(Icons.category_outlined)),
          BottomNavigationBarItem(label: "My Account", icon: Icon(Icons.person_2_outlined))
        ],
      ),*/
      /*Container(
        height: 60,
        decoration: BoxDecoration(
          color:
              Color.fromARGB(255, 63, 98, 65), //Theme.of(context).primaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.home_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.category_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {},
              icon: const Icon(
                Icons.person_2_outlined,
                color: Colors.white,
                size: 35,
              ),
            ),
          ],
        ),
      ),*/
      /* Column(
        children: [
          Container(
            child: Image.asset(
                          "assets/images/t10.png",
                          fit: BoxFit.cover,
                        ),
            color: Colors.red,
          ),
          Container(
            color: Colors.amber,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        //height: (size.height - size.height / 4) / 4,
                        //width: size.width / 2,
                        child: Image.asset(
                          "assets/images/t10.png",
                          fit: BoxFit.cover,
                        )),
                    Container(
                        //height: (size.height - size.height / 4) / 4,
                        //width: size.width / 2,
                        child: Image.asset(
                          "assets/images/t11.png",
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        //height: (size.height - size.height / 4) / 4,
                        //width: size.width / 2,
                        child: Image.asset(
                          "assets/images/t12.png",
                          fit: BoxFit.cover,
                        )),
                    Container(
                        //height: (size.height - size.height / 4) / 4,
                        //width: size.width / 2,
                        child: Image.asset(
                          "assets/images/t13.png",
                          fit: BoxFit.cover,
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),*/
    );
  }
}
