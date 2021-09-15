import 'package:fluter_test/app/data/controller/home_controller/home_controller.dart';
import 'package:fluter_test/app/data/providers/api.dart';
import 'package:fluter_test/app/data/repository/posts_repository.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() {
      return HomeController(
          repository:
              PostsRepository(apiClient: ApiClient(httpClient: http.Client())));
    });
  }
}
