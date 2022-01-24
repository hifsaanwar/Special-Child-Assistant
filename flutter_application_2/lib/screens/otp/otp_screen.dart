import 'package:flutter/material.dart';
import 'package:flutter_application_2/size_config.dart';
import 'package:flutter_application_2/helper/phoneNumberArgs.dart';
import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PhoneArguments;
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Body(args.phone),
    );
  }
}
