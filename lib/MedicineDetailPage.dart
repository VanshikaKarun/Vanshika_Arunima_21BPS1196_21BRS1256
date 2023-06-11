import 'package:flutter/material.dart';


class MedicineDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 10),
            Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Container(
                height: 100,
                child: Image.asset(
                  'images/combiflame.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              elevation: 1,
              margin: EdgeInsets.all(5),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.fromLTRB(10,0,0,0),
              child: MedicineTitleWidget(
                medicineName: "\nCombiflame \n",
                medicinePrice: "Rs 100.00",
                medicineCompany: "Sanofi India Limited",
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.fromLTRB(10,0,0,0),
              child: Text(
                'INTRODUCTION',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 6, 72, 165),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 200,
              height: 50,
              color: Color.fromARGB(255, 242, 248, 255),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  height: 150,
                  child: Text(
                    'COMBIFLAM TABLET is a combination of Ibuprofen and Paracetamol which belongs to the group of medicines called Non-steroidal anti-inflammatory drugs (NSAIDs) and Analgesics respectively. It is used to treat minor aches and pains such as headaches, toothaches, muscular aches, backaches, pain due to inflammation and for reduction of fever due to any of the above conditions in adults and children aged 12 years and above. Analgesics help to reducefever.',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14,
                      fontWeight: FontWeight.w400, 
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.fromLTRB(10,0,0,0),
              child: Text(
                'Generic Name',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 6, 72, 165),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 200,
              height: 50,
              color: Color.fromARGB(255, 242, 248, 255),
              child: Center(
                child: Text(
                  'Ibuprofen 400 mg + Paracetamol 325 mg',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.fromLTRB(10,0,0,0),
              child: Text(
                'Directions for Use',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 6, 72, 165),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              width: 200,
              height: 100,
              color: Color.fromARGB(255, 242, 248, 255),
              child: Center(
                child: Container(
                  height: 150,
                  padding: const EdgeInsets.fromLTRB(10,0,0,0),
                  child: Text(
                    'Take COMBIFLAM TABLET as advised by your physician. It can be taken with or without food. For Tablet, Capsule: Swallow COMBIFLAM TABLET with a glass of water. Do not crush or chew the medicine. For Dispersible Tablet: Disperse the medicine in the specified quantity of water as mentioned in the label. Consume the medicine immediately after reconstitution. Your doctor will decide the correct dose and duration of therapy for you depending upon your age, body weight and severity of the infection.',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.fromLTRB(10,0,0,0),
              child: Text(
                'HOW TO MANAGE SIDE EFFECTS',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 6, 72, 165),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.fromLTRB(10,0,0,0),
              child: Text(
                'Nausea',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 63, 74, 90),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.fromLTRB(10,0,0,0),
              child: Text(
                'Take this medicine with or just after a meal. Avoid eating rich or spicy food.',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 20, 39, 67),
                ),
              ),
            ),
            SizedBox(height: 20),
            AddToCartMenu(),
          ],
        ),
      ),
    );
  }
}

class MedicineTitleWidget extends StatelessWidget {
  final String medicineName;
  final String medicinePrice;
  final String medicineCompany;

  const MedicineTitleWidget({
    Key? key,
    required this.medicineName,
    required this.medicinePrice,
    required this.medicineCompany,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          medicineName,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Price: $medicinePrice',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF3a3a3b),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'Company: $medicineCompany',
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF3a3a3b),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class AddToCartMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 10),
      ],
    );
  }
}