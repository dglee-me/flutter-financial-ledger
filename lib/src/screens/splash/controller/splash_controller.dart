import 'dart:async';

import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _init();
  }

  // 1초간 스플래쉬 화면을 보여주고 라우팅 한다.
  void _init() {
    Timer(const Duration(seconds: 1), () => route());
  }

  route() {}
}
