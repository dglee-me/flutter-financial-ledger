import 'dart:async';

import 'package:financial/src/screens/home/home.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _init();
  }

  // 1초간 스플래쉬 화면을 보여주고 라우팅 한다.
  void _init() async {
    Timer(const Duration(milliseconds: 1500), () => route());
  }

  route() {
    Get.offAllNamed(Home.routeName);
  }
}
