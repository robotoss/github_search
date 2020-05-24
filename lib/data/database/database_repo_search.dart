import 'package:moor/moor.dart';

// User data
class Users extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get login => text()();
  TextColumn get nodeId => text()();
  TextColumn get avatarUrl => text()();
  TextColumn get gravatarId => text()();
  TextColumn get url => text()();
  TextColumn get receivedEventsUrl => text()();
  TextColumn get type => text()();

  @override
  Set<Column> get primaryKey => {id};
}

// Repo data
class RepoItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get userId => integer()();
  TextColumn get nodeId => text()();
  TextColumn get name => text()();
  TextColumn get fullName => text()();
  BoolColumn get private => boolean()();
  TextColumn get htmlUrl => text()();
  TextColumn get description => text()();
  BoolColumn get fork => boolean()();
  TextColumn get url => text()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  DateTimeColumn get pushedAt => dateTime()();
  TextColumn get homepage => text()();
  IntColumn get size => integer()();
  IntColumn get stargazersCount => integer()();
  IntColumn get watchersCount => integer()();
  TextColumn get language => text()();
  IntColumn get forksCount => integer()();
  IntColumn get openIssuesCount => integer()();
  TextColumn get masterBranch => text()();
  TextColumn get defaultBranch => text()();
  RealColumn get score => real()();

  @override
  Set<Column> get primaryKey => {id};
}
