import 'package:flutter/material.dart';
import 'package:flutter_application_2/assets.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/home/home_screen.dart';
import 'package:flutter_application_2/screens/social/art_therapy.dart';
import 'package:flutter_application_2/screens/social/miracle_league.dart';
import 'package:flutter_application_2/screens/social/pet_therapy.dart';
import 'package:flutter_application_2/screens/social/social_olympics.dart';
import 'package:flutter_application_2/screens/social/swimming.dart';
import 'package:readmore/readmore.dart';

class MusicTherapy extends StatelessWidget {
  static String routeName = "/musictherapy";
  String content = '''Music therapy is the clinical use of music to accomplish individualized goals such as reducing stress, improving mood and self-expression. It is an evidence-based therapy well-established in the health community. ''';
  String heading1 = "Who do music therapists work with?";
  String heading2 = "What happens before music therapy??";
  String heading3 = "What happens during music therapy?";
  String heading4 = "What are the benefits of music therapy?";
  String data1 =
      '''People of all backgrounds, ages and cultures can respond to music, and to music therapy. Notable groups music therapists have helped include:

1. Military service members and veterans. Music therapy helps you cope with trauma.
2. People with Autism Spectrum Disorder (ASD). Individuals on the spectrum learn best when there is familiarity, structure, predictability and consistency.
3. Individuals with Alzheimer’s disease. Music therapy may help with memory and stimulate your mind because of predictability, familiarity and feelings of security.
4. People in correctional settings. If you’re incarcerated, in a mental health facility, half-way house or group home, music therapy may help with problem-solving, communication skills, relaxation and decreasing impulsivity.
5. Victims of trauma and crisis. If you’ve experienced trauma and crisis, you might have anxiety, stress and pain. Music therapy can help you with decreasing those three experiences, improving your mood, feeling confident and in control and providing a non-verbal outlet for emotions.
6. Those who are physically ill. The list includes, but is not limited to people with chronic pain, diabetes, cardiac conditions, cancer, headaches, recent surgery and people in rehab.
7. Individuals with mental health disorders. If you’re dealing with a mental health disorder, music therapy can help you with communication and expression, help you explore your thoughts and feelings, improve your mood and concentration and develop coping skills.
8. People with chronic pain. Music therapy can help decrease your pain, anxiety, fatigue and depression.
9. Substance abusers. Music therapy may help if you have a substance abuse disorder. Research has shown that it can increase motivation and self-esteem, reduce muscle tension, decrease anxiety, improve self-awareness and strengthen coping skills.''';
  String data2 =
      ''' Before the session, your music therapist will assess your needs and your strengths. You may discuss:

1. Emotional well-being.
2. Physical health.
3. Physiological responses.
4. Perceptual/motor skills.
5. Social functioning.
6. Communication abilities.
7. Cognitive (mental and intellectual) skills.
8. Musical background and skills.
9. Trauma history.
10. Trauma triggers.

Your music therapist will also talk with you about any background you might have in music and your musical preferences. They will then work with you to identify goals and design appropriate music therapy experiences for the session. In doing so, they’ll consider:

1. Your music preferences and interests
2. Your age and developmental level.
3. Your physical abilities.
4. Your cognitive abilities.
5. Your trauma triggers.''';
  String data3 =
      '''During music therapy you and your therapist will do one or more of the following:

1, Create music. You might compose music, write lyrics, or make up music together
2. Sing music. Use your voice to share a piece of music.
3. Listen to music. Enjoy the sound and lyrics.
4. Move to music. It can be as simple as tapping your toes together or as complicated as a coordinated dance.
5. Discuss lyrics. Read or listen to the lyrics of a song and talk about their meaning. 
6. Play an instrument. Use an instrument like a piano, guitar, drums, etc. to share music.
  ''';
  String data4 = ''' Research in music therapy supports its effectiveness in six areas: psychological, emotional, physical, spiritual, cognitive and social.

1. Emotional:

Music can call up repressed (bottled up) emotions that may then be released.
Music can lessen feelings of isolation.
Improved mood.
Decreased depression.
Anxiety reduction.
Self-expression.
Stress management.

2. Physical:

Music can affect the body by changing your heart rate and lowering blood pressure and respiration (breathing) rate.
Improved motor development or processing.
Relaxation and/or improved sleep.
It can physically stimulate conscious or unconscious body movements, such as toe tapping or large body movements, and improved gait (walking) and speech.
Management of and/or distraction from pain.
Reduced asthma episodes.
Reduced pain.
Help premature infants with weight gain and sleep.
Help people with Parkinson’s disease improve their motor functions.

3. Spiritual:

Music can open the door spiritually and allow you and your family the opportunity to explore your own spiritual beliefs.
Cognitive:

Music can provide an increased sense of control.
Coping skills.
Lessen the effects of dementia.

4. Social:

Music can bring people together socially, not just at large gatherings such as parties, weddings, or funerals, but in more informal, intimate, shared experiences, like a hospital room
Help autistic children improve communication. ''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Music Therapy"),
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
                  image: AssetImage('assets/images/MT.jpg'),
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
                              builder: (context) =>  ArtTherapy()),
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
                              builder: (context) => PetTherapy()),
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
