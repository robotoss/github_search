import 'package:github_search/data/models/search_repos.dart';
import 'package:github_search/data/network/services/services_api.dart';

class Repository {
  ServicesApi api = ServicesApi();

  /// Get repo by name
  Future<SearchRepos> reposByName(String userPhone) async {
    return api.reposByName(userPhone);
  }
}
