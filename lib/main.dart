import 'package:d3f_inapp_purchase/app_global_binding.dart';
import 'package:d3f_inapp_purchase/routes/links.dart';
import 'package:d3f_inapp_purchase/routes/middle_ware.dart';
import 'package:d3f_inapp_purchase/routes/routes.dart';
import 'package:d3f_inapp_purchase/translations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      translationsKeys: InAppPurchaseGlobalTranslation.mergedTranslationKeys(),
      locale: const Locale('vi', 'VI'),
      fallbackLocale: const Locale('vi', 'VI'),
      initialBinding: InAppPurchaseGlobalBinding(),
      initialRoute: InAppPurchaseAppLinks.splash,
      routingCallback: (routing) => InAppPurchaseMiddleWare.observer,
      getPages: InAppPurchaseAppRoutes.pages,
    );
  }
}
