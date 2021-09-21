import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/jobs/theme/colors.dart';

class BottomMenuBar extends StatefulWidget {
  BottomMenuBar({required Key key}) : super(key: key);

  @override
  _BottomMenuBarState createState() => _BottomMenuBarState();
}

class _BottomMenuBarState extends State<BottomMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: BottomAppBar(
        child: Row(
          children: [
            Expanded(
              child: IconButton(
                icon: Icon(Icons.home_outlined, color: KColors.primary),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.bookmark_border_rounded, color: KColors.icon),
                onPressed: () {},
              ),
            ),
            Expanded(
              child: IconButton(
                icon: Icon(Icons.person_outline_rounded, color: KColors.icon),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
