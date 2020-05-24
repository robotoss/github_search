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

  Future<List<RepoItem>> getRepos() => select(repoItems).get();

  Future insertRepo(RepoItem repo) => into(repoItems).insert(repo);

  Future updateRepo(RepoItem repo) => update(repoItems).replace(repo);

  Future deleteRepo(RepoItem repo) => delete(repoItems).delete(repo);
}
