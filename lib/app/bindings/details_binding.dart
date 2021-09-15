import 'package:fluter_test/app/data/controller/details_controller.dart';
import 'package:fluter_test/app/data/providers/api.dart';
import 'package:fluter_test/app/data/repository/posts_repository.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class DetailsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailsController>(() {
      return DetailsController(
          repository:
              PostsRepository(apiClient: ApiClient(httpClient: http.Client())));
    });
  }
}
