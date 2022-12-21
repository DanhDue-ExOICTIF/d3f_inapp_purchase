// ignore_for_file: depend_on_referenced_packages, library_prefixes

import 'package:d3f_login/app/routes/app_pages.dart' as loginPages;
import 'package:fimber/fimber.dart';
import 'package:get/get.dart';

import 'links.dart';

class InAppPurchaseMiddleWare extends GetMiddleware {
  static observer(Routing? routing) {
    switch (routing?.current) {
      case InAppPurchaseAppLinks.tokenIsExpired:
        {
          Fimber.d('MiddleWare.observer() - AppLinks.tokenIsExpired');
          Get.offNamed(loginPages.Routes.LOGIN);
          break;
        }
      case InAppPurchaseAppLinks.splash:
        {
          Fimber.d('MiddleWare.observer() - AppLinks.tokenIsExpired');
          Get.offNamed(InAppPurchaseAppLinks.splash);
          break;
        }
      default:
        {
          Fimber.d('MiddleWare.observer() - unknown the app route.');
          break;
        }
    }
  }
}
