import 'package:get/get.dart';
import 'package:dio/dio.dart';

class InAppPurchaseGlobalBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => Dio(), permanent: true);
  }
}