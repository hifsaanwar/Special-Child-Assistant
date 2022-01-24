import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home/components/doctor_info.dart';

import '../../../constants.dart';

class RecomendDoctor extends StatelessWidget {
  const RecomendDoctor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecomendDoctorCard(
            image: "assets/images/samantha.png",
            title: "Dr Samina Ahmed",
            disease: "Dyxlexia",
            press: () {
              /*Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoctorsInfo(),
                  ));
              //   ),*/
              //);
            },
          ),
          RecomendDoctorCard(
            image: "assets/images/angelica.png",
            title: "Dr Fouzia Iftikhar",
            disease: "Down Syndrome",
            press: () {},
          ),
          RecomendDoctorCard(
            image: "assets/images/samantha.png",
            title: "Dr Saima Malik",
            disease: "Cerebral Palsy",
            //specialization: "Heart Specialist(child)",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendDoctorCard extends StatelessWidget {
  const RecomendDoctorCard({
    Key? key,
    this.image,
    this.title,
    this.disease,
    this.specialization,
    this.press,
  }) : super(key: key);

  final String? image, title, disease;
  final String? specialization;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image!),
          GestureDetector(
            onTap: press!(),
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                          text: "$disease",
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  /*Text(
                    '\$specialization',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: kPrimaryColor),
                  )*/
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
