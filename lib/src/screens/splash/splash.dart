import 'package:financial/src/constants.dart';
import 'package:financial/src/screens/splash/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Splash extends GetView<SplashController> {
  static const routeName = '/splash';

  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              width: 100,
              margin: const EdgeInsets.only(bottom: 15),
              child: SvgPicture.asset(
                "assets/splash/ci.svg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const SizedBox(
        height: 70,
        child: Center(
          child: Text(
            COPYRIGHT,
            style: TextStyle(
              fontSize: 10,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
