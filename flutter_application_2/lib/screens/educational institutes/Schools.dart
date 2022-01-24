import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/coustom_bottom_nav_bar.dart';

import '../../constants.dart';
import '../../enums.dart';

// First Stateless Widget with MaterialApp Start
class Schools extends StatelessWidget {
  static String routeName = '/school';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewPage(),
    );
  }
}
// First Stateless Widget with MaterialApp Ends

// Main Stateful Widget Start
class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  // Title List Here
  var titleList = [
    "Karachi",
    "Lahore",
    "Islamabad",
    "Faislabad",
    "Rawalpindi",
    "Gujranwala",
    "Peshawar"
  ];

  // Description List Here
  var descList = [
    "1-The Effort Rehabilitation and Vocational Centre for Special Children Garden West karachi 2- Ida Rieu School 3- IBP - School of Special Education4- Nai Subah - Institute for Persons with visual impairment",
    "1- Govt. Special Education Center, Ravi Town, Ali Park, Fort Road Lahore. 2-	Govt. Special Education Center, Aziz Bhatti Town, St. No. 2, Afzal Park, Harbanspura, Lahore. 3-Govt. In-service Training college for the Teachers of Disabled Children, 31- Sher Shah Block, New Garden Town, Lahore",
    "1- National Institute of Special Education (NISE) 2- Umeed-e-Noor  3- National Special Education Centre for Hearing Impaired Children",
    "1- Institute for Hearing Impaired/Intellectually Challenged and Physically Challenged Kids. 2- Tanzeem al-Lissan - Eid Bagh, Dhobi Ghat, Faisalabad",
    "1- Army Special Education School 2- Chambeli Institute Rawalpindi 3-PAF School For Special Education",
    "1- Govt Special Education Center 2- AAGOSH Special School  3- Heaven Star special school gujranwala cantt 4- govt. special education center MCC",
    "1-Umeed Special Education School 2-PAKISTAN EDUCATORS school system 3- special friends education system."
  ];

  // Image Name List Here
  var imgList = [
    "assets/images/stringio.jpeg",
    "assets/images/school.jpeg",
    "assets/images/school.jpeg",
    "assets/images/school.jpeg",
    "assets/images/school.jpeg",
    "assets/images/school.jpeg",
    "assets/images/school.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get Device Width
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Educational Institutes"),
      ),
      // Main List View With Builder
      body: ListView.builder(
        itemCount: imgList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // This Will Call When User Click On ListView Item
              showDialogFunc(
                  context, imgList[index], titleList[index], descList[index]);
            },
            // Card Which Holds Layout Of ListView Item
            child: Card(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(imgList[index]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          titleList[index],
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: width,
                          child: Text(
                            descList[index],
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[500]),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}

// This is a block of Model Dialog
showDialogFunc(context, img, title, desc) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            height: 320,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    img,
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  // width: 200,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      desc,
                      maxLines: 10,
                      style: TextStyle(fontSize: 15, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
