import 'package:financial/src/screens/setting/controller/SettingController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Setting extends GetView<SettingController> {
  const Setting({Key? key}) : super(key: key);

  static const String routeName = '/setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('설정'),
      ),
      body: const Center(
        child: Text('설정'),
      ),
    );
  }
}
