import 'dart:io';

import 'package:financial/src/screens/financial/financial.dart';
import 'package:financial/src/screens/home/controller/HomeController.dart';
import 'package:financial/src/screens/setting/setting.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends GetView<HomeController> {
  const Home({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: IndexedStack(
          index: controller.pageIndex.value,
          children: const [
            Financial(), // 가계부
            Setting(), // 설정
          ],
        ),
        bottomNavigationBar: AnimatedContainer(
          height: Platform.isAndroid ? 60 : 80,
          duration: const Duration(milliseconds: 250),
          child: Wrap(
            children: [
              BottomNavigationBar(
                iconSize: 30,
                elevation: 0,
                backgroundColor: Colors.grey[100],
                enableFeedback: false,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: controller.pageIndex.value,
                onTap: (int index) {
                  controller.pageIndex.value = index;
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.payment_outlined),
                    activeIcon: Icon(Icons.payment),
                    label: '가계부',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.settings_outlined),
                    activeIcon: Icon(Icons.settings),
                    label: '설정',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
