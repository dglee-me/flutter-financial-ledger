import 'package:financial/src/screens/splash/controller/splash_controller.dart';
import 'package:financial/src/screens/splash/splash.dart';
import 'package:get/get.dart';

List<GetPage> route() {
  return [
    GetPage(
      name: Splash.routeName,
      page: () => const Splash(),
      transition: Transition.fadeIn,
      binding: BindingsBuilder(
        () {
          Get.lazyPut(() => SplashController());
        },
      ),
    ),
  ];
}
