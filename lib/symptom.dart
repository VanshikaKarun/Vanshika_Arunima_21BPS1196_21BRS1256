import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:medi/diagnosis.dart';

class symptom extends StatelessWidget{
  TextEditingController _symp = new TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Medico'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Symptom',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Container(
              width: 300,
              child: TextField(
                textCapitalization: TextCapitalization.words,
                controller: _symp,
                decoration: InputDecoration(
                  hintText: 'Enter your Symptom',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.deepOrange
                    )
                  ),
                  prefixIcon: Icon(Icons.search,),
                ),
              ),
            ),
            Container(height: 15,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>diagnosis(symp: _symp.text)));
            }, child: Text('Search'),
            )
          ]
        ),
      )
    );
  }
}