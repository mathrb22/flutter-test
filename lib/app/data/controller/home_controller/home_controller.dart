import 'package:fluter_test/app/data/model/model.dart';
import 'package:fluter_test/app/data/repository/posts_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
//repository required
  final PostsRepository repository;
  HomeController({required this.repository}) : assert(repository != null);

  final _postsList = <PostModel>[].obs;
  get postList => this._postsList.value;
  set postList(value) => this._postsList.value = value;

  ///função para recuperar todos os posts
  getAll() {
    repository.getAll().then((data) {
      this.postList = data;
    });
  }
}
