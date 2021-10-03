import 'package:flutter/material.dart';
import 'package:flutter_application_2/assets.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/home/home_screen.dart';
import 'package:flutter_application_2/screens/social/miracle_league.dart';
import 'package:flutter_application_2/screens/social/pet_therapy.dart';
import 'package:flutter_application_2/screens/social/social_olympics.dart';
import 'package:flutter_application_2/screens/social/swimming.dart';
import 'package:readmore/readmore.dart';

class VisionTherapy extends StatelessWidget {
  static String routeName = "/visiontherapy";
  String content = '''Vision therapy is an evidence-based program to treat visual problems including lazy eye, eye turns and binocular vision problems.''';
  String heading1 = "What is vision therapy?";
  String heading2 = "How vision works";
  String heading3 = "How does vision therapy treat eye problems?";
  String heading4 = "Vision therapy for children and young people";
  String data1 =
      '''Vision therapy is a program that aims to improve a person’s visual abilities. It uses a variety of ways – such as eye exercises, testing, occlusion (patching) lenses and prisms – to treat a range of visual problems. 

Vision therapy may be used to treat problems such as:

-> Amblyopia (lazy eye)
-> Eye alignment and coordination problems (including turned eyes or squints)
-> Poor focus
-> Inadequate eye-hand coordination. 
Each program is designed to suit the specific needs of the individual.''';
  String data2 =
      ''' Vision is the process of deriving meaning from what is seen. It is more than simply the ability to distinguish fine details (visual acuity). Vision also involves:

-> Accommodation (focusing)
-> Convergence (eye aiming)
-> Binocularity (eye coordination)
-> Fixation and eye movement abilities
-> Eye-hand coordination
-> Visual form perception.
Vision continues to develop after birth and is influenced by the visual environment and someone's experience.

Vision problems can exist even if you have healthy eyes and can see clearly.  Difficulties may occur in your eye muscle control and coordination.

If you have vision problems, you may experience visual discomfort when performing visually demanding activities.''';
  String data3 =
      '''According to the Australian Bureau of Statistics, approximately half the Australian population has some vision problem that requires treatment.

While most people have refractive errors (such as short-sightedness, long-sightedness, astigmatism and presbyopia), in some, their eye problems can be improved by vision therapy.

Although vision therapy is available to people of all ages, it is more effective in children and young adults.
  ''';
  String data4 = ''' One common problem in children is they may have difficulty coordinating their eyes. To see something clearly, both eyes must be aimed correctly and focused at the right distance. 

Any problems with aiming or focusing the eyes can cause a variety of symptoms, including:

-> Intermittent double vision
-> Blurred vision
-> Headaches 
-> Eyestrain.
Children with these problems often do not complain about them, but may simply avoid tasks (such as reading), which are difficult or cause discomfort. 

An optometrist may suggest a program of vision therapy to improve eye coordination and focusing. ''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Vision Therapy"),
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
                  image: AssetImage('assets/images/VT.jpg'),
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
                          MaterialPageRoute(
                              builder: (context) =>  PetTherapy()),
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
                      onPressed: () {},
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
