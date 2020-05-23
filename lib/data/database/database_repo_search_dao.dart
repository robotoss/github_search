import 'dart:io';

import 'package:moor_ffi/moor_ffi.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'package:path/path.dart' as p;

import 'database_repo_search.dart';

part 'database_repo_search_dao.g.dart';
part 'database_methods.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db_search_repo.sqlite'));
    return VmDatabase(file, logStatements: true);
  });
}

@UseMoor(
    tables: [Users, RepoItems],
    daos: [RepoSearchBaseDao])
class RepoSearchDatabase extends _$RepoSearchDatabase {
  RepoSearchDatabase() : super(_openConnection());

  //Database version
  @override
  int get schemaVersion => 1;
}

