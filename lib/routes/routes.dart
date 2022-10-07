import 'package:d3f_inapp_purchase/screens/dashboard/dashboard_binding.dart';
import 'package:d3f_inapp_purchase/screens/dashboard/dashboard_page.dart';
import 'package:d3f_inapp_purchase/screens/splash/splash_binding.dart';
import 'package:d3f_inapp_purchase/screens/splash/splash_page.dart';
import 'package:get/get.dart';

import 'links.dart';

class InAppPurchaseAppRoutes {
  static final pages = <GetPage>[
    GetPage(
        name: InAppPurchaseAppLinks.splash,
        page: () => const SplashPage(),
        binding: SplashBinding()),
    GetPage(
        name: InAppPurchaseAppLinks.dashboard,
        page: () => DashboardPage(),
        binding: DashboardBinding()),
  ];
}
