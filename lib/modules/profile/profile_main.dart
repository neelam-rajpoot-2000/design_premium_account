import 'package:design_premium_account/constants/images_constant.dart';
import 'package:flutter/material.dart';

class ProfileMain extends StatefulWidget {
  const ProfileMain({Key? key}) : super(key: key);

  @override
  State<ProfileMain> createState() => _ProfileMainState();
}

class _ProfileMainState extends State<ProfileMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              ImageConstants.background1,
              fit: BoxFit.cover,
              width: double.infinity,
            )
          ],
        ),
      ),
    );
  }
}
