import 'package:d3f_login/routes/links.dart';
import 'package:fimber/fimber.dart';
import 'package:get/get.dart';

import 'links.dart';

class InAppPurchaseMiddleWare extends GetMiddleware {
  static observer(Routing? routing) {
    switch (routing?.current) {
      case InAppPurchaseAppLinks.tokenIsExpired: {
        Fimber.d('MiddleWare.observer() - AppLinks.tokenIsExpired');
        Get.offNamed(LoginAppLinks.login);
        break;
      }
      case InAppPurchaseAppLinks.splash: {
        Fimber.d('MiddleWare.observer() - AppLinks.tokenIsExpired');
        Get.offNamed(InAppPurchaseAppLinks.splash);
        break;
      }
      default: {
        Fimber.d('MiddleWare.observer() - unknown the app route.');
        break;
      }
    }
  }
}