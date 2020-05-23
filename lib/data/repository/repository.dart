import 'package:flutter/material.dart';
import 'package:github_search/data/database/database_repo_search_dao.dart';
import 'package:github_search/data/models/search_repos.dart';
import 'package:github_search/data/network/services/services_api.dart';
import 'package:provider/provider.dart';

class Repository {
  ServicesApi _api = ServicesApi();

  /// Get repo by name
  Future<SearchRepos> reposByName(String keyword) async {
    return _api.reposByName(keyword);
  }

  /// Get user
  Future<User> getUser(
    BuildContext context,
  ) async {
    final _sql = Provider.of<RepoSearchBaseDao>(context, listen: false);
    return _sql.getUser();
  }

  /// Create new user
  Future<void> createUser(BuildContext context, User user) async {
    final _sql = Provider.of<RepoSearchBaseDao>(context, listen: false);
    return _sql.insertUser(user);
  }
}
