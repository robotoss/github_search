import 'package:dio/dio.dart';
import 'package:github_search/data/models/search_repos.dart';
import 'package:github_search/data/network/performens/dio/dio_network_service.dart';

class ServicesApi {
  final networkService = DIONetworkService();

  String baseUrl = 'https://api.github.com';

  Future<SearchRepos> authorizationEnterSms(String keyword) async {
    Response<String> authResponse = await networkService.dio
        .get("$baseUrl/search/repositories", queryParameters: {"q": keyword});
    return searchReposFromJson(authResponse.toString());
  }
}
