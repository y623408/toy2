import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:khelonawala/constants.dart';

class SellerDetailsScreen extends StatefulWidget {
  const SellerDetailsScreen({super.key});

  @override
  State<SellerDetailsScreen> createState() => _ShippingDetailsScreenState();
}

class _ShippingDetailsScreenState extends State<SellerDetailsScreen> {
  final _uName = TextEditingController();
  final _phoneNo = TextEditingController();
  final _addCol1 = TextEditingController();
  final _addCol2 = TextEditingController();
  final _pincode = TextEditingController();
  final _addCity = TextEditingController();
  final _state = TextEditingController();

  //Bank Details
  final _accHolderName = TextEditingController();
  final _accNo = TextEditingController();
  final _ifscCode = TextEditingController();

  //Tax Details
  final _panNo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        title: const Text("Seller Details"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //Address Details
                children: [
                  Text(
                    "Address Details",
                    style: TextStyle(
                        color: kTextColor, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: _uName,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Full Name',
                    ),
                  ),
                  TextFormField(
                    controller: _phoneNo,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Mobile Number',
                    ),
                  ),
                  TextFormField(
                    controller: _addCol1,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Flat, House No., Building, Company',
                    ),
                  ),
                  TextFormField(
                    controller: _addCol2,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Area, Street, Sector, Village',
                    ),
                  ),
                  TextFormField(
                    controller: _pincode,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Pincode',
                    ),
                  ),
                  TextFormField(
                    controller: _addCity,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Town/City',
                    ),
                  ),
                  TextFormField(
                    controller: _state,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'State',
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Bank Details",
                    style: TextStyle(
                        color: kTextColor, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: _accHolderName,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Account Holder Name',
                    ),
                  ),
                  TextFormField(
                    controller: _accNo,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Account Number',
                    ),
                  ),
                  TextFormField(
                    controller: _ifscCode,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'IFSC Code',
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Taxation Details",
                    style: TextStyle(
                        color: kTextColor, fontWeight: FontWeight.bold),
                  ),
                  TextFormField(
                    controller: _panNo,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'PAN Number',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () => createSeller(),
                    color: kTextColor,
                    child: const Text(
                      'Add Details',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future createSeller({required}) async {
    final seller = FirebaseFirestore.instance.collection('seller').doc();

    final json = {
      '_uName': _uName.text,
      '_phoneNo': _phoneNo.text,
      '_addCol1': _addCol1.text,
      '_addCol2': _addCol2.text,
      '_pincode': _pincode.text,
      '_addCity': _addCity.text,
      '_state': _state.text,
      '_accHolderName': _accHolderName.text,
      '_accNo': _accNo.text,
      '_ifscCode': _ifscCode.text,
      '_panNo': _panNo.text,
    };

    await seller.set(json);
  }
}
