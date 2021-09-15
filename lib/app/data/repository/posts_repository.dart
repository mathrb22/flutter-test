import 'package:fluter_test/app/data/providers/api.dart';

class PostsRepository {
  final ApiClient apiClient;

  PostsRepository({required apiClient}) : this.apiClient = apiClient;

  getAll() {
    return apiClient.getAll();
  }
}
