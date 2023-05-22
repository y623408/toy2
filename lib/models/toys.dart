import 'package:flutter/material.dart';

class Toys {
  final String image, title, description; //type;
  final int price, size, id;//qty,id;
  final Color color;
  Toys({
    required this.image,
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
    //required this.qty,
    //required this.type,
  });
}
  /*
static Toys fromJson(Map<String, dynamic> json) => Toys(
      image: json['img'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      size: json['size'],
      color: json['color'],
      qty: json['qty'],
      type: json['type'],
    );
}*/
/*
Toys fromJson(Map<String, dynamic> json) => Toys(
      image: json['img'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      size: json['size'],
      color: json['color'],
      qty: json['qty'],
      type: json['type'],
    );
*/
List<Toys> toys = [
  Toys(
      id: 1,
      image: "assets/images/toys/sikkim.jpeg",
      title: "Wooden Toys",
      price: 199,
      description:
          "Wooden toys such as animals and birds are also popular in the region. Wooden toys can be bought for Rs. 50 to Rs. 500.",
      size: 25,
      color: Colors.brown,),
  Toys(
      id: 2,
      image: "assets/images/toys/wb.jpg",
      title: "Clay Dolls",
      price: 299,
      description:
          "Clay dolls and toys depicting gods and goddesses are also famous crafts of the region. Clay dolls and toys can be bought for Rs. 50 to Rs. 500.",
      size: 25,
      color: Colors.brown),
  Toys(
      id: 3,
      image: "assets/images/toys/chhattisgarh.jpg",
      title: "Wooden Toys",
      price: 249,
      description:
          "Wooden toys such as animals and birds are also popular in the region. Wooden toys can be bought for Rs. 50 to Rs. 500.",
      size: 25,
      color: Colors.brown),
  Toys(
      id: 4,
      image: "assets/images/toys/goa.jpg",
      title: "Pottery, Terracotta Toys",
      price: 249,
      description:
          "Terracotta toys such as animals and birds are popular in the region. Terracotta toys can be bought for Rs. 50 to Rs. 500.",
      size: 25,
      color: Colors.brown),
  Toys(
      id: 5,
      image: "assets/images/toys/haryana.jpg",
      title: "Terracotta Toys",
      price: 549,
      description:
          "Terracotta toys such as horses, elephants, and birds are also a popular craft of the region. They are priced between Rs. 100 to Rs. 1,000 depending on the size and intricacy of the carving.",
      size: 25,
      color: Colors.brown),
  Toys(
      id: 6,
      image: "assets/images/toys/jharkhand.jpg",
      title: "Bamboo Crafts",
      price: 349,
      description:
          "Bamboo crafts such as baskets and lamps are also famous crafts of the region. Bamboo crafts can be bought for Rs. 50 to Rs. 1,000.",
      size: 25,
      color: Colors.brown),
  Toys(
      id: 7,
      image: "assets/images/toys/meghalaya.jpg",
      title: "Bamboo Toys",
      price: 599,
      description:
          "Bamboo crafts such as baskets and lamps are popular in Meghalaya. The price of bamboo crafts varies from Rs. 50 to Rs. 1,000 depending on the size and design.",
      size: 25,
      color: Colors.brown),
  Toys(
      id: 8,
      image: "assets/images/toys/mp.jpg",
      title: "Wooden Toys",
      price: 349,
      description:
          "Wooden toys such as animals and carts are also popular in the region. They are priced between Rs. 100 to Rs. 1,000 depending on the size and intricacy of the carving.",
      size: 25,
      color: Colors.brown),
  Toys(
      id: 9,
      image: "assets/images/toys/odisha.jpg",
      title: "Stone Carvings",
      price: 599,
      description:
          "Stone carvings of deities, animals, and other objects are also famous crafts of the region. Stone carvings can be bought for Rs. 100 to Rs. 5,000.",
      size: 25,
      color: Colors.brown),
  Toys(
      id: 9,
      image: "assets/images/toys/punjab.jpg",
      title: "Phulkari, Wooden Toys",
      price: 499,
      description:
          "Wooden toys such as carts, dolls, and animals are also popular in the region. They are priced between Rs. 100 to Rs. 1,000 depending on the size and intricacy of the carving.",
      size: 25,
      color: Colors.brown),
];