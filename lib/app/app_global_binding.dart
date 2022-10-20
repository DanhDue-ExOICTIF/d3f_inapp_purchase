// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';
import 'package:get/get.dart';

class InAppPurchaseGlobalBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => Dio(), permanent: true);
  }
}
