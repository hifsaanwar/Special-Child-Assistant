import 'package:flutter/material.dart';
import 'package:flutter_application_2/assets.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/home/home_screen.dart';
import 'package:flutter_application_2/screens/social/miracle_league.dart';
import 'package:flutter_application_2/screens/social/music_therapy.dart';
import 'package:flutter_application_2/screens/social/social_olympics.dart';
import 'package:flutter_application_2/screens/social/swimming.dart';
import 'package:readmore/readmore.dart';

class ArtTherapy extends StatelessWidget {
  static String routeName = "/arttherapy";
  String content = '''
    The old saying, “A picture is worth a thousand words,” reflects the powerful effect that the arts and creative expression have on human understanding and communication. Art therapy works to harness that power for therapeutic means.''';
  String heading1 = "What Is Art Therapy?";
  String heading2 = "Benefits of Art Therapy";
  String heading3 = "Things to Consider";
  String heading4 = "How to Get Started";
  String data1 =
      '''The use of artistic methods to treat psychological disorders and enhance mental health is known as art therapy. Art therapy is a technique rooted in the idea that creative expression can foster healing and mental well-being.1

People have been relying on the arts for communication, self-expression, and healing for thousands of years. But art therapy didn't start to become a formal program until the 1940s.2

Doctors noted that individuals living with mental illness often expressed themselves in drawings and other artworks, which led many to explore the use of art as a healing strategy.3

 Since then, art has become an important part of the therapeutic field and is used in some assessment and treatment techniques.''';
  String data2 =
      ''' An art therapist may use a variety of art methods, including drawing, painting, sculpture, and collage with clients ranging from young children to older adults.

Clients who have experienced emotional trauma, physical violence, domestic abuse, anxiety, depression, and other psychological issues can benefit from expressing themselves creatively.

Some situations in which art therapy might be utilized include:

Adults experiencing severe stress
Children experiencing behavioral or social problems at school or at home
Children or adults who have experienced a traumatic event
Children with learning disabilities
Individuals living with a brain injury
People experiencing mental health problems''';
  String data3 =
      '''If you or someone you love is thinking about art therapy, there are some common misconceptions and facts you should know.
  1. You Don't Have to Be Artistic
  2. It's Not the Same as an Art Class
  3. Art Therapy Can Take Place in a Variety of Settings
  4. Art Therapy Is Not for Everyone
  ''';
  String data4 = ''' If you think you or someone you love would benefit from art therapy, consider the following steps:

  1. Seek out a trained professional. Qualified art therapists will hold at least a master’s degree in psychotherapy with an additional art therapy credential. To find a qualified art therapist, consider searching the Art Therapy Credentials Board website.
  2. Call your health insurance. While art therapy may not be covered by your health insurance, there may be certain medical waivers to help fund part of the sessions. Your insurance may also be more likely to cover the sessions if your therapist is a certified psychologist or psychiatrist who offers creative therapies.
  3. Ask about their specialty. Not all art therapists specialize in all mental health conditions. Many specialize in working with people who have experienced trauma or individuals with substance use disorders, for example.
  4. Know what to expect. During the first few sessions, your art therapist will likely ask you about your health background as well as your current concerns and goals. They may also suggest a few themes to begin exploring via drawing, painting, sculpting, or another medium.
  5. Be prepared to answer questions about your art-making process. As the sessions progress, you'll likely be expected to answer questions about your art and how it makes you feel. For example: What were you thinking while doing the art? Did you notice a change of mood from when you started to when you finished? Did the artwork stir any memories?
   ''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Art Therapy"),
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
      image: AssetImage('assets/images/AT.jpg'),
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
                              builder: (context) =>  SpecialOlympics()),
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
                          MaterialPageRoute(builder: (context) => MusicTherapy()),
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
