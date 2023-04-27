import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:untitled4/Archive.dart';
// import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';
 import 'Account.dart';
 import 'Archive.dart';


void main(){
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeapp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  final List<String> entries = <String>['A', 'B', 'C','d'];
  final List<int> colorCodes = <int>[600, 500,400, 100];
  void selectScreen(BuildContext ctx){
    Navigator.of(ctx).push( MaterialPageRoute(
        builder: (_){
          return Screen1();
        }
        ));
  }
  void Archive (BuildContext ctx){
    Navigator.of(ctx).push( MaterialPageRoute(
        builder: (_){
          return archive();
        }
    ));
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
    appBar: AppBar(),
      drawer: Drawer(),
      body:Container(
      child:
      Column(
          children:[
            Container(
            height: 600,
            child:ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 150,
                    color: Colors.amber[colorCodes[index]],
                    child: Center(child: Text('Entry ${entries[index]}')),
                  );
                }
            )
          ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
               crossAxisAlignment: CrossAxisAlignment.center,


               children: [

                 TextButton(
                   onPressed: () {

                   },
                   style: TextButton.styleFrom(
                       foregroundColor: Colors.red,
                       elevation: 2,
                       backgroundColor: Colors.amber),
                   child: const Text(
                     "archive",
                     style: TextStyle(fontSize: 25),
                   ),
                 ),
                 TextButton(
                   onPressed: () {},
                   style: TextButton.styleFrom(
                       foregroundColor: Colors.red,
                       elevation: 2,
                       backgroundColor: Colors.amber),
                   child: const Text(
                     "add",
                     style: TextStyle(fontSize: 25),
                   ),
                 ),
                 TextButton(
                   onPressed: () {selectScreen(context);},
                   style: TextButton.styleFrom(
                       foregroundColor: Colors.red,
                       elevation: 2,
                       backgroundColor: Colors.amber),
                   child: const Text(
                     "account",
                     style: TextStyle(fontSize: 25),
                   ),
                 ),



          ],
      )
      // This trailing comma makes auto-formatting nicer for build methods.
     ],
      ),/* Padding(
      padding: EdgeInsets.all(8.0),
      child:Container(
        height:150,
        color: Colors.deepPurple,
      ),
    ),*/
    ),
             );
  }

}

