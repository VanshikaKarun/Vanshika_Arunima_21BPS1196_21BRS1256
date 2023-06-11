import 'package:flutter/material.dart';

class showsymptom extends StatelessWidget{
  final String symp;
  const showsymptom({super.key, required this.symp,});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        child: Text(" Showing all medications for : ${symp}", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
      ),
    );
  }
}