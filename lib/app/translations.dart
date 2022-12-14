import 'package:d3f_inapp_purchase/d3f_inapp_purchase.dart';
import 'package:d3f_shared/generated/locales.g.dart' as shared;

abstract class InAppPurchaseGlobalTranslation {
  static Map<String, Map<String, String>> translationsKeys = {};

  static Map<String, Map<String, String>> mergedTranslationKeys() {
    translationsKeys.addAll(AppTranslation.translations);
    translationsKeys.addAll(shared.AppTranslation.translations);
    return translationsKeys;
  }
}
