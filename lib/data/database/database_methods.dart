part of 'database_repo_search_dao.dart';

@UseDao(tables: [Users, RepoItems])
class RepoSearchBaseDao extends DatabaseAccessor<RepoSearchDatabase>
    with _$RepoSearchBaseDaoMixin {
  final RepoSearchDatabase db;

  RepoSearchBaseDao(this.db) : super(db);

  ///
  /// User
  ///

  Future<User> getUser() async {
    var allUsers = await select(users).get();
    return allUsers[0];
  }

  Future insertUser(User user) => into(users).insert(user);

  Future deleteUser(User user) => delete(users).delete(user);

  ///
  /// Repos
  ///

  Future<List<ReposItem>> getRepos() async {
    var repoData = await select(repoItems).get();
    var allUsers = await select(users).get();

    List<ReposItem> data = List();

    for (var repo in repoData) {
      var owner = Owner(
        login: allUsers[repo.userId].login,
        id: allUsers[repo.userId].id,
        nodeId: allUsers[repo.userId].nodeId,
        avatarUrl: allUsers[repo.userId].avatarUrl,
        gravatarId: allUsers[repo.userId].gravatarId,
        url: allUsers[repo.userId].url,
        receivedEventsUrl: allUsers[repo.userId].receivedEventsUrl,
        type: allUsers[repo.userId].type,
      );
      data.add(ReposItem(
        id: repo.id,
        nodeId: repo.nodeId,
        name: repo.name,
        fullName: repo.fullName,
        owner: owner,
        private: repo.private,
        htmlUrl: repo.htmlUrl,
        description: repo.description,
        fork: repo.fork,
        url: repo.url,
        createdAt: repo.createdAt,
        updatedAt: repo.updatedAt,
        pushedAt: repo.pushedAt,
        homepage: repo.homepage,
        size: repo.size,
        stargazersCount: repo.stargazersCount,
        watchersCount: repo.watchersCount,
        language: repo.language,
        forksCount: repo.forksCount,
        openIssuesCount: repo.openIssuesCount,
        masterBranch: repo.masterBranch,
        defaultBranch: repo.defaultBranch,
        score: repo.score,
      ));
    }
    return data;
  }

  Future insertRepo(RepoItem repo) => into(repoItems).insert(repo);

  Future updateRepo(RepoItem repo) => update(repoItems).replace(repo);

  Future deleteRepo(RepoItem repo) => delete(repoItems).delete(repo);
}
