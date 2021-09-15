import 'package:fluter_test/app/bindings/details_binding.dart';
import 'package:fluter_test/app/modules/home/details/details_page.dart';
import 'package:fluter_test/app/modules/home/home_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => HomePage(),
    ),
    GetPage(
        name: Routes.DETAILS,
        page: () => DetailsPage(),
        binding: DetailsBinding()), //dependencias de details via rota
  ];
}
