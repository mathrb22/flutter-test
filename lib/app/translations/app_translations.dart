import 'package:fluter_test/app/translations/en_US/en_US_translation.dart';
import 'package:fluter_test/app/translations/pt_BR/pt_br_translation.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'pt_BR': ptBR,
    'en_US': enUs,
  };
}
