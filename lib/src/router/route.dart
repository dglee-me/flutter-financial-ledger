import 'package:financial/src/screens/financial/controller/financial_controller.dart';
import 'package:financial/src/screens/financial/financial.dart';
import 'package:financial/src/screens/home/controller/HomeController.dart';
import 'package:financial/src/screens/home/home.dart';
import 'package:financial/src/screens/setting/controller/SettingController.dart';
import 'package:financial/src/screens/setting/setting.dart';
import 'package:financial/src/screens/splash/controller/splash_controller.dart';
import 'package:financial/src/screens/splash/splash.dart';
import 'package:get/get.dart';

List<GetPage> route() {
  return [
    GetPage(
      name: Splash.routeName,
      page: () => const Splash(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.put(SplashController());
      }),
    ),
    GetPage(
      name: Home.routeName,
      page: () => const Home(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.put(HomeController());
      }),
    ),
    GetPage(
      name: Financial.routeName,
      page: () => const Financial(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.put(FinancialController());
      }),
    ),
    GetPage(
      name: Setting.routeName,
      page: () => const Setting(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(() {
        Get.put(SettingController());
      }),
    ),
  ];
}
