import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/jobs/jobs.dart';
import 'package:flutter_application_2/screens/medical/symptoms.dart';
import 'package:flutter_application_2/screens/social/social.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_2/screens/chats/chats_screen.dart';
import 'package:flutter_application_2/screens/home/home_screen.dart';
import 'package:flutter_application_2/screens/profile/profile_screen.dart';
import 'package:flutter_application_2/screens/medical/symptoms.dart';
import '../constants.dart';
import '../enums.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState? selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/flower.svg",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/first-aid-kit.svg",
                  height: 24,
                  width: 24,
                  color: MenuState.aid == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, Symptoms.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/social-icon.svg",
                  height: 24,
                  width: 24,
                  color: MenuState.aid == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () => Navigator.pushNamed(context, Social.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/chat.svg",
                  color: MenuState.message == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, ChatsScreen.routeName),
              ),
            ],
          )),
    );
  }
}
