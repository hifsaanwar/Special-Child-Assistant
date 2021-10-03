import 'package:flutter/material.dart';
import 'package:flutter_application_2/assets.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/home/home_screen.dart';
import 'package:flutter_application_2/screens/jobs/jobs.dart';
import 'package:flutter_application_2/screens/social/miracle_league.dart';
import 'package:readmore/readmore.dart';

class Swimming extends StatelessWidget {
  static String routeName = "/swimming";
  String content =
    '''Adaptive swim lessons use techniques that place emphasis on swimming skills modified or adapted to accommodate individual abilities, needs, and goals, regardless of age. ''';
  String heading1 = "Why should I choose adaptive swim lessons for me/my child/my dependent?";
  String heading2 = "Why teach my child with special needs how to swim?";
  String heading3 = "Who benefits from adaptive swim lessons?";
   String data1 = '''If you/your child/dependent have sensory challenges:

Water mutes sounds and provides a break to those with auditory sensitivities.
The temperature and consistent pressure of the water against the skin can serve as a source of constant, easily discernible, and calming sensation.
If you/your child/dependent have challenged with motor planning:

Learning some swim strokes, like front and back crawl, helps improve bilateral coordination because they involve crossing the mid-line and coordinating movement on both sides of the body.
Gradually learning swim stroke patterns helps those with motor planning difficulties.
If you/your child/dependent have physical disabilities:

You’ll have a sense of independence – you won’t have to rely on any supportive device, such as a wheelchair to move around.
The water’s buoyancy evenly distributes and supports the weight of the body; there is no danger of falling, and there are no impact forces on the residual limb.
In general, swimming offers many benefits including:

Strengthening of cardiovascular systems and the major muscle groups of both the upper and lower body.
Improved flexibility in the muscles and joints – you’ll perform a wide range of motion against the water’s resistance.
Keep your heart rate up but takes some of the stress that is common in impact sports off the body.''';
  String data2 = ''' 1. Swimming is fun! Some of our clients discover their love for the water such that the most difficult part of the lesson was how to end it.
2. It’s an essential life skill. Unfortunately, accidental drowning is among the leading causes of death of children typical or with special needs[1][2].
3. It’s a great way to build self confidence.
4. It’s a life long skill that can help with fitness and wellness.
5. No one is too old to learn to swim.''';
  String data3 = '''People of any age diagnosed with life-long condition/s that include, but not limited to:

ADD/ADHD
Apraxia
Autism/ASD
Cerebral Palsy
Chromosomal Abnormalities
Diabetes
Down Syndrome
Dyspraxia
Fetal Alcohol Syndrome
Gross Motor Delay
Hodgkin’s Lymphoma
Hydrocephalus
Multiple Sclerosis
Muscular Dystrophy
Obesity
Parkinson’s Disease
Pervasive Developmental Disorder/PDD-NOS
Premature Birth Complications
Rheumatoid Arthritis
Seizure Disorders
Sensory Challenges
''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Adaptive Swimming"),
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
          image: AssetImage(
              'assets/images/swim.png'),
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
                      splashColor: Colors.green.shade900,
                      onPressed: () {},
                     
                    ),
                  
                  ),
                  Container(
                    child: IconButton(
                      icon: Icon(Icons.home),
                      iconSize: 50,
                      color: kPrimaryColor,
                      splashColor: Colors.green.shade900,
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
                      splashColor: Colors.green.shade900,
                      onPressed: () {  
                Navigator.push(  
                context,  
                MaterialPageRoute(builder: (context) => MiracleLeague()),  
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
                  color:kPrimaryColor,
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
                  color:kPrimaryColor,
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
                  color:kPrimaryColor,
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
