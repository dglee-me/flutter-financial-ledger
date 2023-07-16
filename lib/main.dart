import 'package:financial/src/constants.dart';
import 'package:financial/src/router/route.dart';
import 'package:financial/src/screens/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: PRIMARY_COLOR,
          onPrimary: Colors.white,
          secondary: Colors.deepPurple,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.white,
          onSurface: Colors.black,
        ),
        useMaterial3: true,
      ),
      initialRoute: Splash.routeName,
      getPages: route(),
    );
  }
}
