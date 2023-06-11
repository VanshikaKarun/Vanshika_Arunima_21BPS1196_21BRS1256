import 'package:flutter/material.dart';
import './showsymptom.dart';
import './options.dart';

class diagnosis extends StatelessWidget {
  String symp;
  diagnosis({required this.symp});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height:100, child: showsymptom(symp: symp)),
          Container(height: 350, child: options()),
        ],
      )
    );
  }
}