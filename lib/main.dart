import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:khelonawala/constants.dart';
import 'package:khelonawala/screens/signin_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //final _textController = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignInScreen(),
    );
    

  }
  /*
      Widget buildToys(Toys toys) => ListTile(
        leading: CircleAvatar(child: Text('${toys.qty}'),),
        title: Text(toys.title),
        subtitle: Text(toys.type),
      ); 

  Stream<List<Toys>> readToys() => FirebaseFirestore.instance
        .collection('toy_details')
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => Toys.fromJson(doc.data())).toList());
*/
}
