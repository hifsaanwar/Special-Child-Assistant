import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedCentres extends StatelessWidget {
  const FeaturedCentres({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeatureCentreCard(
            image: "assets/images/center1.png",
            description: "Physical Therapy",
            location: "DHA Phase 6",
            press: () {},
          ),
          FeatureCentreCard(
            image: "assets/images/download.png",
            description: "Mental Therapy",
            location: "Faisal Town",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeatureCentreCard extends StatelessWidget {
  const FeatureCentreCard({
    Key? key,
    this.image,
    this.press,
    this.description,
    this.location,
  }) : super(key: key);
  final String? image, description, location;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press!(),
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2.5,
        ),
        width: size.width * 0.4,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image!),
          ),
        ),
      ),
    );
  }
}
