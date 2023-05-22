import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:khelonawala/constants.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetailsScreen> {
  final _toyName = TextEditingController();
  final _description = TextEditingController();
  final _color = TextEditingController();
  final _size = TextEditingController();
  final _state = TextEditingController();
  final _qty = TextEditingController();
  final _price = TextEditingController();
  final _ageMin = TextEditingController();
  final _ageMax = TextEditingController();
  int _type = 0; // = TextEditingController();
  final _picker = ImagePicker();
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print("Failed to pick Image : ${e}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 63, 98, 65),
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: const Text("Add Product Details"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              image != null
                  ? Image.file(
                      image!,
                      fit: BoxFit.cover,
                    )
                  : Container(),
              MaterialButton(
                onPressed: () => pickImage(),
                color: Colors.amber[50],
                child: Text(
                  image != null ? 'Change Image' : 'Add Image',
                  style: TextStyle(color: Colors.black),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              TextField(
                controller: _toyName,
                decoration: InputDecoration(
                  labelText: "Name of the Toy",
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _toyName.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              TextField(
                controller: _description,
                decoration: InputDecoration(
                  labelText: "Description",
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _description.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              TextField(
                controller: _ageMin,
                decoration: InputDecoration(
                  labelText: "Min age",
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _ageMin.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              TextField(
                controller: _ageMax,
                decoration: InputDecoration(
                  labelText: "Max age",
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _ageMax.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              TextField(
                controller: _color,
                decoration: InputDecoration(
                  labelText: "Toy Color",
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _color.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              TextField(
                controller: _size,
                decoration: InputDecoration(
                  labelText: "Size(in cm)",
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _size.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              TextField(
                controller: _state,
                decoration: InputDecoration(
                  labelText: "State",
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _state.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              TextField(
                controller: _qty,
                decoration: InputDecoration(
                  labelText: "Enter Quantity ",
                  border: UnderlineInputBorder(),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _qty.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),
              SizedBox(
                height: kDefaultPadding / 2,
              ),
              TextField(
                controller: _price,
                decoration: InputDecoration(
                  labelText: "Toy Price",
                  border: UnderlineInputBorder(),
                  prefix: Text(
                    "Rs. ",
                    style: TextStyle(color: Colors.black),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      _price.clear();
                    },
                    icon: Icon(Icons.clear),
                  ),
                ),
              ),              
              MaterialButton(
                onPressed: () => createProduct(),
                color: kTextColor,
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Future createProduct({required })async{
    final product= FirebaseFirestore.instance.collection('toy_details').doc();

    final json = {
      '_ageMax':_ageMax.text,
      '_ageMin':_ageMin.text,
      '_color' : _color.text.trim(),
      '_description' : _description.text.trim(),
      '_price' : _price.text,
      '_qty' : _qty.text,
      '_size' : _size.text.trim(),
      '_state' : _state.text.trim(),
      '_title' : _toyName.text.trim(),
    };

    await product.set(json);
  }
}
