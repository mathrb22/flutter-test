import 'package:fluter_test/app/bindings/home_binding.dart';
import 'package:fluter_test/app/modules/home/home_page.dart';
import 'package:fluter_test/app/routes/app_pages.dart';
import 'package:fluter_test/app/themes/app_theme.dart';
import 'package:fluter_test/app/translations/app_translations.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(GetMaterialApp(
    title: 'Flutter Test - GetX',
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.INITIAL,
    initialBinding: HomeBinding(),
    defaultTransition: Transition.fade,
    theme: appThemeData,
    getPages: AppPages.pages,
    home: HomePage(),
    locale: Locale('pt', 'BR'),
    translationsKeys: AppTranslation.translations,
  ));
}
