import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:medi/HomeScreen.dart';

void main(){
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Medico'),
      ),
      body: HomeScreen(),
    );
  }
}
