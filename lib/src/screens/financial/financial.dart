import 'package:financial/src/screens/financial/controller/financial_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Financial extends GetView<FinancialController> {
  const Financial({Key? key}) : super(key: key);

  static const String routeName = '/financial';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('가계부'),
      ),
    );
  }
}
