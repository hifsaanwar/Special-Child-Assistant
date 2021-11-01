import 'package:flutter/material.dart';
import 'package:flutter_application_2/assets.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/home/home_screen.dart';
import 'package:flutter_application_2/screens/social/social_olympics.dart';
import 'package:flutter_application_2/screens/social/swimming.dart';
import 'package:readmore/readmore.dart';

class MiracleLeague extends StatelessWidget {
  static String routeName = "/miracleleague";
  String content = '''
    The Miracle League’s mission is to provide opportunities for all children to play baseball regardless of their ability.''';
  String heading1 = "“Every Child Deserves to Play Baseball” and you can help!";
  String heading2 = "The rules for Miracle League games are as follows:";
  String heading3 = "Our players may not be able to run the bases or hit the ball as well as some of their peers, but they have an equal amount of love and determination to play baseball.  We want to help them achieve that dream.?";
  String data1 =
      ''' For over 10 years, the Miracle League Association has made it possible for children all over the country with physical and mental disabilities to achieve the same dream as their healthy peers – to play ball.
The field is complete with a cushioned synthetic turf to help prevent injuries, wheelchair accessible dugouts, and a completely flat surface to eliminate any barriers to the wheelchair bound or visually impaired players. The Miracle League is a non-profit (501) c (3) organization.''';
  String data2 =
      ''' Every player bats once each inning
All players are safe on the bases
Every player scores a run before the inning is over (last one up gets a home run)
Community children and volunteers serve as “buddies” to assist the players as they bat and field the ball
Each team and each player wins every game''';
  String data3 =
      '''The Miracle League removes the barriers that keep children with mental and physical disabilities off the baseball field and lets them experience the joy of America’s favorite pastime. Since the main barriers for these adults arise from the natural grass fields used in conventional leagues, Miracle League teams play on a custom-designed, rubberized turf field that accommodates wheelchairs and other assertive devices while helping to prevent injuries.

But it’s more than playing a game. The Miracle League is about making new friends, building self-esteem and being treated just like other athletes.  To help the athletes, the Miracle League uses a “buddy” system – pairing each player with an able-bodied peer.  The result is a bond that cannot be described. The Miracle League serves children and adults who suffer from any physical or mental disabilities, which causes them to be excluded, whether intentionally or not, from conventional Baseball leagues.

The first Miracle League field opened in Conyers, Georgia in April 2000.  Word spread and by 2002, fields opened in South Carolina, Alabama, West Virginia, Illinois, and California. There are   presently 240 plus Miracle League Organizations across the country including Puerto Rico and Canada, while serving 200,000 plus children and adults.

The Miracle League has an aggressive plan to help local communities  build Miracle League complexes around the globe.''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Miracle League"),
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
              'assets/images/ML.jpg'),
          fit: BoxFit.fill,
          
        ),
        
        shape: BoxShape.circle,
      ),
    ),
    SizedBox(height: 20),
            Container(
              width: 400,
      height: 400,
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
                          MaterialPageRoute(builder: (context) => Swimming()),
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
                MaterialPageRoute(builder: (context) => SpecialOlympics()),  
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
