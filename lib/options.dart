import 'package:flutter/material.dart';
import 'package:medi/MedicineDetailPage.dart';


class options extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var arrData = [
      {
        'name': 'Combiflame',
        'info': 'Painkillers',
      },
      {
        'name': 'Medicated facewash',
        'info': 'Personal Care',
      },
      {
        'name': 'Paracetamol',
        'info': 'info',
      },
      {
        'name': 'Med4',
        'info': 'info',
      }
    ];
    return Scaffold(
      body: Container(
        child: ListView(
          children: arrData.map((value) {
          return InkWell(
            onTap: (){
              if(value['name'].toString() == 'Combiflame'){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicineDetailsPage()));
              }
            },
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                  child: Container(
                  color: Color.fromARGB(255, 229, 243, 255),
                  child: ListTile(
                    leading: Icon(Icons.badge),
                    title: Text(value['name'].toString()),
                    subtitle: Text(value['info'].toString()),
                  ),
                ),
              ),
            ),
          );
          }).toList(),
        ),
      ),
    );
  }
}