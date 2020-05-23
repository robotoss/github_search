part of 'database_repo_search_dao.dart';

@UseDao(tables: [Owners, RepoItems])
class RepoSearchBaseDao extends DatabaseAccessor<RepoSearchDatabase>
    with _$RepoSearchBaseDaoMixin {
  final RepoSearchDatabase db;

  RepoSearchBaseDao(this.db) : super(db);

  // ///
  // /// User
  // ///

  // Future<User> getUser() async {
  //   var allUsers = await select(users).get();
  //   return allUsers[0];
  // }

  // Future insertUser(User user) => into(users).insert(user);

  // Future deleteUser(User user) => delete(users).delete(user);

  // ///
  // /// Test
  // ///
}
