import 'package:fluter_test/app/data/model/model.dart';
import 'package:fluter_test/app/data/repository/posts_repository.dart';
import 'package:get/get.dart';

class DetailsController extends GetxController {
  final PostsRepository repository;
  DetailsController({required this.repository}) : assert(repository != null);

  final _post = PostModel().obs;
  get post => this._post.value;
  set post(value) => this._post.value = value;

  editar(post) {
    print("editar");
  }

  delete(id) {
    print("deletar");
  }
}
