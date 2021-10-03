import 'package:flutter/material.dart';
import 'package:flutter_application_2/assets.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/home/home_screen.dart';
import 'package:flutter_application_2/screens/social/art_therapy.dart';
import 'package:flutter_application_2/screens/social/miracle_league.dart';
import 'package:flutter_application_2/screens/social/swimming.dart';
import 'package:readmore/readmore.dart';

class SpecialOlympics extends StatelessWidget {
  static String routeName = "/specialo;ympics";
  String content = '''
    Children and adults with intellectual disabilities inspire us every day at Special Olympics events around the world.''';
  String heading1 = "“Mission:";
  String heading2 = "Believe:";
  String heading3 = "Special Olympics Pakistan’s Programs:";
  String data1 = '''The mission of Special Olympics Pakistan is to provide year round sports training and athletic competition in a variety of Olympic type sports for children and adults with an intellectual disability, giving them continuing opportunities to develop physical fitness, demonstrate courage, experience joy and participate in the sharing of gifts, skills and friendship with their families, other Special Olympics athletes and the community.''';
  String data2 = ''' Special Olympics Pakistan believes that people with intellectual disabilities can – and will – succeed when given the chance. We believe that we can help them on this journey and make them reach new heights by joining hands to make an impact. Special Olympics Pakistan has helped bring about attitude change for the intellectually disabled and society in general, by replacing misunderstanding and fear with respect, acceptance and inclusion.''';
  String data3 = '''Special Olympics Pakistan, not only caters to the sports aspect of development but also enhances the quality of the lives of the intellectually disabled through different health and leadership programs. They do this in order to increase inclusion in society and help them become productive members of the mainstream society.''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Special Olympics"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Container(
              height: 250.0,
              width: 250.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/SL.jpg'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: 20),
            Container(
              decoration: new BoxDecoration(color: kPrimaryColor),
              child: Text(
                content,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 50,
                      color: kPrimaryColor,
                      splashColor: Colors.purple,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MiracleLeague()),
                        );
                      },
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.home),
                      iconSize: 50,
                      color: kPrimaryColor,
                      splashColor: Colors.purple,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                    ),
                  ),
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward),
                      iconSize: 50,
                      color: kPrimaryColor,
                      splashColor: Colors.amber,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArtTherapy()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Text(
                heading1,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ReadMoreText(
                data1,
                trimLines: 5,
                textAlign: TextAlign.justify,
                trimMode: TrimMode.Line,
                trimCollapsedText: " Show More ",
                trimExpandedText: " Show Less ",
                lessStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
                moreStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
                style: TextStyle(
                  fontSize: 20,
                  height: 2,
                ),
              ),
            ),
            Container(
              child: Text(
                heading2,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ReadMoreText(
                data2,
                trimLines: 5,
                textAlign: TextAlign.justify,
                trimMode: TrimMode.Line,
                trimCollapsedText: " Show More ",
                trimExpandedText: " Show Less ",
                lessStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
                moreStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
                style: TextStyle(
                  fontSize: 20,
                  height: 2,
                ),
              ),
            ),
            Container(
              child: Text(
                heading3,
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: ReadMoreText(
                data3,
                trimLines: 5,
                textAlign: TextAlign.justify,
                trimMode: TrimMode.Line,
                trimCollapsedText: " Show More ",
                trimExpandedText: " Show Less ",
                lessStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
                moreStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
                style: TextStyle(
                  fontSize: 20,
                  height: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
