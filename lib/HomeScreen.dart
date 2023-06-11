import 'package:flutter/material.dart';
import 'package:medi/symptom.dart';


class HomeScreen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  String name = '';
  int age = 0;
  double height = 0.0;
  double weight = 0.0;

  void handleNameChange(String value) {
    setState(() {
      name = value;
    });
  }

  void handleAgeChange(String value) {
    setState(() {
      age = int.tryParse(value) ?? 0;
    });
  }

  void handleHeightChange(String value) {
    setState(() {
      height = double.tryParse(value) ?? 0.0;
    });
  }

  void handleWeightChange(String value) {
    setState(() {
      weight = double.tryParse(value) ?? 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('USER PROFILE'),
        backgroundColor: Color.fromRGBO(13, 144, 210, 1),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Container(
                width: 400, // Adjust the width as needed
                child: TextField(
                  onChanged: handleNameChange,
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      //borderSide: BorderSide(color: Colors.deepOrange)
                    ),
                  ),
                )),
            SizedBox(height: 15),
            Text(
              'Age',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Container(
                width: 400, // Adjust the width as needed
                child: TextField(
                  onChanged: handleNameChange,
                  decoration: InputDecoration(
                    hintText: 'Enter your age',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    border: OutlineInputBorder(),
                  ),
                )),
            SizedBox(height: 15),
            Text(
              'Height',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Container(
                width: 400, // Adjust the width as needed
                child: TextField(
                  onChanged: handleNameChange,
                  decoration: InputDecoration(
                    hintText: 'Enter your height (inches)',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    border: OutlineInputBorder(),
                  ),
                )),
            SizedBox(height: 15),
            Text(
              'Weight',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Container(
                width: 400, // Adjust the width as needed
                child: TextField(
                  onChanged: handleNameChange,
                  decoration: InputDecoration(
                    hintText: 'Enter your weight(kgs)',
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    border: OutlineInputBorder(),
                  ),
                )),
            SizedBox(height: 20),
            Container(height: 5,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => symptom()));
            }, child: Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}


// class HomeScreen extends StatelessWidget {
//   const HomeScreen({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 300,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(21),
//                   // borderSide: BorderSide(
//                   //   color: Colors.deepOrange
//                   // )
//                 )
//               ),
//             ),
//             Container(height: 11,),
//             TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(21),
//                   // borderSide: BorderSide(
//                   //   color: Colors.deepOrange
//                   // )
//                 )
//               ),
//             ),
//             Container(height: 11,),
//             ElevatedButton(onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder: (context) => symptom()));
//             }, child: Text('Login'),
//             )
//           ]
//         )
//       ),
//     );
//   }
// }