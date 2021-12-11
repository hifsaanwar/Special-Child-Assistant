import 'package:flutter/material.dart';
import 'package:flutter_application_2/assets.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/home/home_screen.dart';
import 'package:flutter_application_2/screens/social/miracle_league.dart';
import 'package:flutter_application_2/screens/social/social_olympics.dart';
import 'package:flutter_application_2/screens/social/music_therapy.dart';
import 'package:flutter_application_2/screens/social/vision_therapy.dart';
import 'package:readmore/readmore.dart';

class PetTherapy extends StatelessWidget {
  static String routeName = "/pettherapy";
  String content = '''Animal-assisted therapy can reduce pain and anxiety in people with a range of health problems.''';
  String heading1 = "What is pet therapy?";
  String heading2 = "How does animal-assisted therapy work?";
  String heading3 = "Who can benefit from animal-assisted therapy?";
  String heading4 = "Does pet therapy have risks?";
  String data1 =
      '''Pet therapy is a broad term that includes animal-assisted therapy and other animal-assisted activities. Animal-assisted therapy is a growing field that uses dogs or other animals to help people recover from or better cope with health problems, such as heart disease, cancer and mental health disorders.

Animal-assisted activities, on the other hand, have a more general purpose, such as providing comfort and enjoyment for nursing home residents.''';
  String data2 =
      ''' An art therapist may use a variety of art methods, including drawing, painting, sculpture, and collage with clients ranging from young children to older adults.

Clients who have experienced emotional trauma, physical violence, domestic abuse, anxiety, depression, and other psychological issues can benefit from expressing themselves creatively.

Some situations in which art therapy might be utilized include:

-> Adults experiencing severe stress
-> Children experiencing behavioral or social problems at school or at home
-> Children or adults who have experienced a traumatic event
-> Children with learning disabilities
-> Individuals living with a brain injury 
-> People experiencing mental health problems''';
  String data3 =
      '''Animal-assisted therapy can significantly reduce pain, anxiety, depression and fatigue in people with a range of health problems:

-> Children having dental procedures
-> People receiving cancer treatment
-> People in long-term care facilities
-> People with cardiovascular diseases
-> People with dementia
-> Veterans with post-traumatic stress disorder
-> People with anxiety
And it's not only people with health problems who reap the benefits. Family members and friends who sit in on animal visits say they feel better, too.

Pet therapy is also being used in nonmedical settings, such as universities and community programs, to help people deal with anxiety and stress.
  ''';
  String data4 = '''The biggest concern, particularly in hospitals, is safety and sanitation. Most hospitals and other facilities that use pet therapy have stringent rules to ensure that the animals are clean, vaccinated, well-trained and screened for appropriate behavior. ''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Pet Therapy"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Container(
               height: 250.0,
      width: 250.0,
  decoration: BoxDecoration(
    color: const Color(0xff7c94b6),
    image: const DecorationImage(
      image: AssetImage('assets/images/PT.jpg'),
      fit: BoxFit.cover,
    ),
    border: Border.all(
      color: Colors.black,
      width: 8,
    ),
    borderRadius: BorderRadius.circular(12),
  ),
),
            
            SizedBox(height: 20),
            Container(
              width: 400,
      height: 500,
      padding: EdgeInsets.all(12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kPrimaryColor , width: 4.0),
       
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      child: Text(
        content,
        style: TextStyle(fontSize: 32, color:kPrimaryColor),
        textAlign: TextAlign.center,
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
                          MaterialPageRoute(
                              builder: (context) => MusicTherapy()),
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
                      onPressed:() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VisionTherapy()),
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
            Container(
              child: Text(
                heading4,
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
                data4,
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
