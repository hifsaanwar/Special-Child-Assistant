import 'package:flutter_application_2/models/Chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/models/Hospital.dart';
import 'package:flutter_application_2/screens/messages/components/message.dart';
import 'package:flutter_application_2/models/ChatMessage.dart';
import '../../../constants.dart';

class HospitalListTile extends StatelessWidget {
  const HospitalListTile({
    Key? key,
    required this.hospital,
    required this.press,
  }) : super(key: key);

  final Hospital hospital;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding, vertical: kDefaultPadding * 0.75),
        child: Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage("assets/images/hospital.jpeg"),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hospital.Name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 8),
                    Opacity(
                      opacity: 0.64,
                      child: Text(
                        hospital.distance.round().toString() + " km Away",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
