// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_repo_search_dao.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class User extends DataClass implements Insertable<User> {
  final int id;
  final String login;
  final String nodeId;
  final String avatarUrl;
  final String gravatarId;
  final String url;
  final String receivedEventsUrl;
  final String type;
  User(
      {@required this.id,
      @required this.login,
      @required this.nodeId,
      @required this.avatarUrl,
      @required this.gravatarId,
      @required this.url,
      @required this.receivedEventsUrl,
      @required this.type});
  factory User.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return User(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      login:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}login']),
      nodeId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}node_id']),
      avatarUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}avatar_url']),
      gravatarId: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}gravatar_id']),
      url: stringType.mapFromDatabaseResponse(data['${effectivePrefix}url']),
      receivedEventsUrl: stringType.mapFromDatabaseResponse(
          data['${effectivePrefix}received_events_url']),
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || login != null) {
      map['login'] = Variable<String>(login);
    }
    if (!nullToAbsent || nodeId != null) {
      map['node_id'] = Variable<String>(nodeId);
    }
    if (!nullToAbsent || avatarUrl != null) {
      map['avatar_url'] = Variable<String>(avatarUrl);
    }
    if (!nullToAbsent || gravatarId != null) {
      map['gravatar_id'] = Variable<String>(gravatarId);
    }
    if (!nullToAbsent || url != null) {
      map['url'] = Variable<String>(url);
    }
    if (!nullToAbsent || receivedEventsUrl != null) {
      map['received_events_url'] = Variable<String>(receivedEventsUrl);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    return map;
  }

  UsersCompanion toCompanion(bool nullToAbsent) {
    return UsersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      login:
          login == null && nullToAbsent ? const Value.absent() : Value(login),
      nodeId:
          nodeId == null && nullToAbsent ? const Value.absent() : Value(nodeId),
      avatarUrl: avatarUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(avatarUrl),
      gravatarId: gravatarId == null && nullToAbsent
          ? const Value.absent()
          : Value(gravatarId),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      receivedEventsUrl: receivedEventsUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(receivedEventsUrl),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
    );
  }

  factory User.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return User(
      id: serializer.fromJson<int>(json['id']),
      login: serializer.fromJson<String>(json['login']),
      nodeId: serializer.fromJson<String>(json['nodeId']),
      avatarUrl: serializer.fromJson<String>(json['avatarUrl']),
      gravatarId: serializer.fromJson<String>(json['gravatarId']),
      url: serializer.fromJson<String>(json['url']),
      receivedEventsUrl: serializer.fromJson<String>(json['receivedEventsUrl']),
      type: serializer.fromJson<String>(json['type']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'login': serializer.toJson<String>(login),
      'nodeId': serializer.toJson<String>(nodeId),
      'avatarUrl': serializer.toJson<String>(avatarUrl),
      'gravatarId': serializer.toJson<String>(gravatarId),
      'url': serializer.toJson<String>(url),
      'receivedEventsUrl': serializer.toJson<String>(receivedEventsUrl),
      'type': serializer.toJson<String>(type),
    };
  }

  User copyWith(
          {int id,
          String login,
          String nodeId,
          String avatarUrl,
          String gravatarId,
          String url,
          String receivedEventsUrl,
          String type}) =>
      User(
        id: id ?? this.id,
        login: login ?? this.login,
        nodeId: nodeId ?? this.nodeId,
        avatarUrl: avatarUrl ?? this.avatarUrl,
        gravatarId: gravatarId ?? this.gravatarId,
        url: url ?? this.url,
        receivedEventsUrl: receivedEventsUrl ?? this.receivedEventsUrl,
        type: type ?? this.type,
      );
  @override
  String toString() {
    return (StringBuffer('User(')
          ..write('id: $id, ')
          ..write('login: $login, ')
          ..write('nodeId: $nodeId, ')
          ..write('avatarUrl: $avatarUrl, ')
          ..write('gravatarId: $gravatarId, ')
          ..write('url: $url, ')
          ..write('receivedEventsUrl: $receivedEventsUrl, ')
          ..write('type: $type')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          login.hashCode,
          $mrjc(
              nodeId.hashCode,
              $mrjc(
                  avatarUrl.hashCode,
                  $mrjc(
                      gravatarId.hashCode,
                      $mrjc(
                          url.hashCode,
                          $mrjc(
                              receivedEventsUrl.hashCode, type.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is User &&
          other.id == this.id &&
          other.login == this.login &&
          other.nodeId == this.nodeId &&
          other.avatarUrl == this.avatarUrl &&
          other.gravatarId == this.gravatarId &&
          other.url == this.url &&
          other.receivedEventsUrl == this.receivedEventsUrl &&
          other.type == this.type);
}

class UsersCompanion extends UpdateCompanion<User> {
  final Value<int> id;
  final Value<String> login;
  final Value<String> nodeId;
  final Value<String> avatarUrl;
  final Value<String> gravatarId;
  final Value<String> url;
  final Value<String> receivedEventsUrl;
  final Value<String> type;
  const UsersCompanion({
    this.id = const Value.absent(),
    this.login = const Value.absent(),
    this.nodeId = const Value.absent(),
    this.avatarUrl = const Value.absent(),
    this.gravatarId = const Value.absent(),
    this.url = const Value.absent(),
    this.receivedEventsUrl = const Value.absent(),
    this.type = const Value.absent(),
  });
  UsersCompanion.insert({
    this.id = const Value.absent(),
    @required String login,
    @required String nodeId,
    @required String avatarUrl,
    @required String gravatarId,
    @required String url,
    @required String receivedEventsUrl,
    @required String type,
  })  : login = Value(login),
        nodeId = Value(nodeId),
        avatarUrl = Value(avatarUrl),
        gravatarId = Value(gravatarId),
        url = Value(url),
        receivedEventsUrl = Value(receivedEventsUrl),
        type = Value(type);
  static Insertable<User> custom({
    Expression<int> id,
    Expression<String> login,
    Expression<String> nodeId,
    Expression<String> avatarUrl,
    Expression<String> gravatarId,
    Expression<String> url,
    Expression<String> receivedEventsUrl,
    Expression<String> type,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (login != null) 'login': login,
      if (nodeId != null) 'node_id': nodeId,
      if (avatarUrl != null) 'avatar_url': avatarUrl,
      if (gravatarId != null) 'gravatar_id': gravatarId,
      if (url != null) 'url': url,
      if (receivedEventsUrl != null) 'received_events_url': receivedEventsUrl,
      if (type != null) 'type': type,
    });
  }

  UsersCompanion copyWith(
      {Value<int> id,
      Value<String> login,
      Value<String> nodeId,
      Value<String> avatarUrl,
      Value<String> gravatarId,
      Value<String> url,
      Value<String> receivedEventsUrl,
      Value<String> type}) {
    return UsersCompanion(
      id: id ?? this.id,
      login: login ?? this.login,
      nodeId: nodeId ?? this.nodeId,
      avatarUrl: avatarUrl ?? this.avatarUrl,
      gravatarId: gravatarId ?? this.gravatarId,
      url: url ?? this.url,
      receivedEventsUrl: receivedEventsUrl ?? this.receivedEventsUrl,
      type: type ?? this.type,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (login.present) {
      map['login'] = Variable<String>(login.value);
    }
    if (nodeId.present) {
      map['node_id'] = Variable<String>(nodeId.value);
    }
    if (avatarUrl.present) {
      map['avatar_url'] = Variable<String>(avatarUrl.value);
    }
    if (gravatarId.present) {
      map['gravatar_id'] = Variable<String>(gravatarId.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (receivedEventsUrl.present) {
      map['received_events_url'] = Variable<String>(receivedEventsUrl.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    return map;
  }
}

class $UsersTable extends Users with TableInfo<$UsersTable, User> {
  final GeneratedDatabase _db;
  final String _alias;
  $UsersTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _loginMeta = const VerificationMeta('login');
  GeneratedTextColumn _login;
  @override
  GeneratedTextColumn get login => _login ??= _constructLogin();
  GeneratedTextColumn _constructLogin() {
    return GeneratedTextColumn(
      'login',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nodeIdMeta = const VerificationMeta('nodeId');
  GeneratedTextColumn _nodeId;
  @override
  GeneratedTextColumn get nodeId => _nodeId ??= _constructNodeId();
  GeneratedTextColumn _constructNodeId() {
    return GeneratedTextColumn(
      'node_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _avatarUrlMeta = const VerificationMeta('avatarUrl');
  GeneratedTextColumn _avatarUrl;
  @override
  GeneratedTextColumn get avatarUrl => _avatarUrl ??= _constructAvatarUrl();
  GeneratedTextColumn _constructAvatarUrl() {
    return GeneratedTextColumn(
      'avatar_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _gravatarIdMeta = const VerificationMeta('gravatarId');
  GeneratedTextColumn _gravatarId;
  @override
  GeneratedTextColumn get gravatarId => _gravatarId ??= _constructGravatarId();
  GeneratedTextColumn _constructGravatarId() {
    return GeneratedTextColumn(
      'gravatar_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _urlMeta = const VerificationMeta('url');
  GeneratedTextColumn _url;
  @override
  GeneratedTextColumn get url => _url ??= _constructUrl();
  GeneratedTextColumn _constructUrl() {
    return GeneratedTextColumn(
      'url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _receivedEventsUrlMeta =
      const VerificationMeta('receivedEventsUrl');
  GeneratedTextColumn _receivedEventsUrl;
  @override
  GeneratedTextColumn get receivedEventsUrl =>
      _receivedEventsUrl ??= _constructReceivedEventsUrl();
  GeneratedTextColumn _constructReceivedEventsUrl() {
    return GeneratedTextColumn(
      'received_events_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, login, nodeId, avatarUrl, gravatarId, url, receivedEventsUrl, type];
  @override
  $UsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'users';
  @override
  final String actualTableName = 'users';
  @override
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('login')) {
      context.handle(
          _loginMeta, login.isAcceptableOrUnknown(data['login'], _loginMeta));
    } else if (isInserting) {
      context.missing(_loginMeta);
    }
    if (data.containsKey('node_id')) {
      context.handle(_nodeIdMeta,
          nodeId.isAcceptableOrUnknown(data['node_id'], _nodeIdMeta));
    } else if (isInserting) {
      context.missing(_nodeIdMeta);
    }
    if (data.containsKey('avatar_url')) {
      context.handle(_avatarUrlMeta,
          avatarUrl.isAcceptableOrUnknown(data['avatar_url'], _avatarUrlMeta));
    } else if (isInserting) {
      context.missing(_avatarUrlMeta);
    }
    if (data.containsKey('gravatar_id')) {
      context.handle(
          _gravatarIdMeta,
          gravatarId.isAcceptableOrUnknown(
              data['gravatar_id'], _gravatarIdMeta));
    } else if (isInserting) {
      context.missing(_gravatarIdMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url'], _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('received_events_url')) {
      context.handle(
          _receivedEventsUrlMeta,
          receivedEventsUrl.isAcceptableOrUnknown(
              data['received_events_url'], _receivedEventsUrlMeta));
    } else if (isInserting) {
      context.missing(_receivedEventsUrlMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type'], _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return User.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UsersTable createAlias(String alias) {
    return $UsersTable(_db, alias);
  }
}

class RepoItem extends DataClass implements Insertable<RepoItem> {
  final int id;
  final int userId;
  final String nodeId;
  final String name;
  final String fullName;
  final bool private;
  final String htmlUrl;
  final String description;
  final bool fork;
  final String url;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime pushedAt;
  final String homepage;
  final int size;
  final int stargazersCount;
  final int watchersCount;
  final String language;
  final int forksCount;
  final int openIssuesCount;
  final String masterBranch;
  final String defaultBranch;
  final double score;
  RepoItem(
      {@required this.id,
      @required this.userId,
      @required this.nodeId,
      @required this.name,
      @required this.fullName,
      @required this.private,
      @required this.htmlUrl,
      @required this.description,
      @required this.fork,
      @required this.url,
      @required this.createdAt,
      @required this.updatedAt,
      @required this.pushedAt,
      @required this.homepage,
      @required this.size,
      @required this.stargazersCount,
      @required this.watchersCount,
      @required this.language,
      @required this.forksCount,
      @required this.openIssuesCount,
      @required this.masterBranch,
      @required this.defaultBranch,
      @required this.score});
  factory RepoItem.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final doubleType = db.typeSystem.forDartType<double>();
    return RepoItem(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      userId:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      nodeId:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}node_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      fullName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}full_name']),
      private:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}private']),
      htmlUrl: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}html_url']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      fork: boolType.mapFromDatabaseResponse(data['${effectivePrefix}fork']),
      url: stringType.mapFromDatabaseResponse(data['${effectivePrefix}url']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      updatedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}updated_at']),
      pushedAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}pushed_at']),
      homepage: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}homepage']),
      size: intType.mapFromDatabaseResponse(data['${effectivePrefix}size']),
      stargazersCount: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}stargazers_count']),
      watchersCount: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}watchers_count']),
      language: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}language']),
      forksCount: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}forks_count']),
      openIssuesCount: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}open_issues_count']),
      masterBranch: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}master_branch']),
      defaultBranch: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}default_branch']),
      score:
          doubleType.mapFromDatabaseResponse(data['${effectivePrefix}score']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<int>(userId);
    }
    if (!nullToAbsent || nodeId != null) {
      map['node_id'] = Variable<String>(nodeId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || fullName != null) {
      map['full_name'] = Variable<String>(fullName);
    }
    if (!nullToAbsent || private != null) {
      map['private'] = Variable<bool>(private);
    }
    if (!nullToAbsent || htmlUrl != null) {
      map['html_url'] = Variable<String>(htmlUrl);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || fork != null) {
      map['fork'] = Variable<bool>(fork);
    }
    if (!nullToAbsent || url != null) {
      map['url'] = Variable<String>(url);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || pushedAt != null) {
      map['pushed_at'] = Variable<DateTime>(pushedAt);
    }
    if (!nullToAbsent || homepage != null) {
      map['homepage'] = Variable<String>(homepage);
    }
    if (!nullToAbsent || size != null) {
      map['size'] = Variable<int>(size);
    }
    if (!nullToAbsent || stargazersCount != null) {
      map['stargazers_count'] = Variable<int>(stargazersCount);
    }
    if (!nullToAbsent || watchersCount != null) {
      map['watchers_count'] = Variable<int>(watchersCount);
    }
    if (!nullToAbsent || language != null) {
      map['language'] = Variable<String>(language);
    }
    if (!nullToAbsent || forksCount != null) {
      map['forks_count'] = Variable<int>(forksCount);
    }
    if (!nullToAbsent || openIssuesCount != null) {
      map['open_issues_count'] = Variable<int>(openIssuesCount);
    }
    if (!nullToAbsent || masterBranch != null) {
      map['master_branch'] = Variable<String>(masterBranch);
    }
    if (!nullToAbsent || defaultBranch != null) {
      map['default_branch'] = Variable<String>(defaultBranch);
    }
    if (!nullToAbsent || score != null) {
      map['score'] = Variable<double>(score);
    }
    return map;
  }

  RepoItemsCompanion toCompanion(bool nullToAbsent) {
    return RepoItemsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      nodeId:
          nodeId == null && nullToAbsent ? const Value.absent() : Value(nodeId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      fullName: fullName == null && nullToAbsent
          ? const Value.absent()
          : Value(fullName),
      private: private == null && nullToAbsent
          ? const Value.absent()
          : Value(private),
      htmlUrl: htmlUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(htmlUrl),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      fork: fork == null && nullToAbsent ? const Value.absent() : Value(fork),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      pushedAt: pushedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(pushedAt),
      homepage: homepage == null && nullToAbsent
          ? const Value.absent()
          : Value(homepage),
      size: size == null && nullToAbsent ? const Value.absent() : Value(size),
      stargazersCount: stargazersCount == null && nullToAbsent
          ? const Value.absent()
          : Value(stargazersCount),
      watchersCount: watchersCount == null && nullToAbsent
          ? const Value.absent()
          : Value(watchersCount),
      language: language == null && nullToAbsent
          ? const Value.absent()
          : Value(language),
      forksCount: forksCount == null && nullToAbsent
          ? const Value.absent()
          : Value(forksCount),
      openIssuesCount: openIssuesCount == null && nullToAbsent
          ? const Value.absent()
          : Value(openIssuesCount),
      masterBranch: masterBranch == null && nullToAbsent
          ? const Value.absent()
          : Value(masterBranch),
      defaultBranch: defaultBranch == null && nullToAbsent
          ? const Value.absent()
          : Value(defaultBranch),
      score:
          score == null && nullToAbsent ? const Value.absent() : Value(score),
    );
  }

  factory RepoItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return RepoItem(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int>(json['userId']),
      nodeId: serializer.fromJson<String>(json['nodeId']),
      name: serializer.fromJson<String>(json['name']),
      fullName: serializer.fromJson<String>(json['fullName']),
      private: serializer.fromJson<bool>(json['private']),
      htmlUrl: serializer.fromJson<String>(json['htmlUrl']),
      description: serializer.fromJson<String>(json['description']),
      fork: serializer.fromJson<bool>(json['fork']),
      url: serializer.fromJson<String>(json['url']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      pushedAt: serializer.fromJson<DateTime>(json['pushedAt']),
      homepage: serializer.fromJson<String>(json['homepage']),
      size: serializer.fromJson<int>(json['size']),
      stargazersCount: serializer.fromJson<int>(json['stargazersCount']),
      watchersCount: serializer.fromJson<int>(json['watchersCount']),
      language: serializer.fromJson<String>(json['language']),
      forksCount: serializer.fromJson<int>(json['forksCount']),
      openIssuesCount: serializer.fromJson<int>(json['openIssuesCount']),
      masterBranch: serializer.fromJson<String>(json['masterBranch']),
      defaultBranch: serializer.fromJson<String>(json['defaultBranch']),
      score: serializer.fromJson<double>(json['score']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<int>(userId),
      'nodeId': serializer.toJson<String>(nodeId),
      'name': serializer.toJson<String>(name),
      'fullName': serializer.toJson<String>(fullName),
      'private': serializer.toJson<bool>(private),
      'htmlUrl': serializer.toJson<String>(htmlUrl),
      'description': serializer.toJson<String>(description),
      'fork': serializer.toJson<bool>(fork),
      'url': serializer.toJson<String>(url),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'pushedAt': serializer.toJson<DateTime>(pushedAt),
      'homepage': serializer.toJson<String>(homepage),
      'size': serializer.toJson<int>(size),
      'stargazersCount': serializer.toJson<int>(stargazersCount),
      'watchersCount': serializer.toJson<int>(watchersCount),
      'language': serializer.toJson<String>(language),
      'forksCount': serializer.toJson<int>(forksCount),
      'openIssuesCount': serializer.toJson<int>(openIssuesCount),
      'masterBranch': serializer.toJson<String>(masterBranch),
      'defaultBranch': serializer.toJson<String>(defaultBranch),
      'score': serializer.toJson<double>(score),
    };
  }

  RepoItem copyWith(
          {int id,
          int userId,
          String nodeId,
          String name,
          String fullName,
          bool private,
          String htmlUrl,
          String description,
          bool fork,
          String url,
          DateTime createdAt,
          DateTime updatedAt,
          DateTime pushedAt,
          String homepage,
          int size,
          int stargazersCount,
          int watchersCount,
          String language,
          int forksCount,
          int openIssuesCount,
          String masterBranch,
          String defaultBranch,
          double score}) =>
      RepoItem(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        nodeId: nodeId ?? this.nodeId,
        name: name ?? this.name,
        fullName: fullName ?? this.fullName,
        private: private ?? this.private,
        htmlUrl: htmlUrl ?? this.htmlUrl,
        description: description ?? this.description,
        fork: fork ?? this.fork,
        url: url ?? this.url,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        pushedAt: pushedAt ?? this.pushedAt,
        homepage: homepage ?? this.homepage,
        size: size ?? this.size,
        stargazersCount: stargazersCount ?? this.stargazersCount,
        watchersCount: watchersCount ?? this.watchersCount,
        language: language ?? this.language,
        forksCount: forksCount ?? this.forksCount,
        openIssuesCount: openIssuesCount ?? this.openIssuesCount,
        masterBranch: masterBranch ?? this.masterBranch,
        defaultBranch: defaultBranch ?? this.defaultBranch,
        score: score ?? this.score,
      );
  @override
  String toString() {
    return (StringBuffer('RepoItem(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('nodeId: $nodeId, ')
          ..write('name: $name, ')
          ..write('fullName: $fullName, ')
          ..write('private: $private, ')
          ..write('htmlUrl: $htmlUrl, ')
          ..write('description: $description, ')
          ..write('fork: $fork, ')
          ..write('url: $url, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('pushedAt: $pushedAt, ')
          ..write('homepage: $homepage, ')
          ..write('size: $size, ')
          ..write('stargazersCount: $stargazersCount, ')
          ..write('watchersCount: $watchersCount, ')
          ..write('language: $language, ')
          ..write('forksCount: $forksCount, ')
          ..write('openIssuesCount: $openIssuesCount, ')
          ..write('masterBranch: $masterBranch, ')
          ..write('defaultBranch: $defaultBranch, ')
          ..write('score: $score')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          userId.hashCode,
          $mrjc(
              nodeId.hashCode,
              $mrjc(
                  name.hashCode,
                  $mrjc(
                      fullName.hashCode,
                      $mrjc(
                          private.hashCode,
                          $mrjc(
                              htmlUrl.hashCode,
                              $mrjc(
                                  description.hashCode,
                                  $mrjc(
                                      fork.hashCode,
                                      $mrjc(
                                          url.hashCode,
                                          $mrjc(
                                              createdAt.hashCode,
                                              $mrjc(
                                                  updatedAt.hashCode,
                                                  $mrjc(
                                                      pushedAt.hashCode,
                                                      $mrjc(
                                                          homepage.hashCode,
                                                          $mrjc(
                                                              size.hashCode,
                                                              $mrjc(
                                                                  stargazersCount
                                                                      .hashCode,
                                                                  $mrjc(
                                                                      watchersCount
                                                                          .hashCode,
                                                                      $mrjc(
                                                                          language
                                                                              .hashCode,
                                                                          $mrjc(
                                                                              forksCount.hashCode,
                                                                              $mrjc(openIssuesCount.hashCode, $mrjc(masterBranch.hashCode, $mrjc(defaultBranch.hashCode, score.hashCode)))))))))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is RepoItem &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.nodeId == this.nodeId &&
          other.name == this.name &&
          other.fullName == this.fullName &&
          other.private == this.private &&
          other.htmlUrl == this.htmlUrl &&
          other.description == this.description &&
          other.fork == this.fork &&
          other.url == this.url &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.pushedAt == this.pushedAt &&
          other.homepage == this.homepage &&
          other.size == this.size &&
          other.stargazersCount == this.stargazersCount &&
          other.watchersCount == this.watchersCount &&
          other.language == this.language &&
          other.forksCount == this.forksCount &&
          other.openIssuesCount == this.openIssuesCount &&
          other.masterBranch == this.masterBranch &&
          other.defaultBranch == this.defaultBranch &&
          other.score == this.score);
}

class RepoItemsCompanion extends UpdateCompanion<RepoItem> {
  final Value<int> id;
  final Value<int> userId;
  final Value<String> nodeId;
  final Value<String> name;
  final Value<String> fullName;
  final Value<bool> private;
  final Value<String> htmlUrl;
  final Value<String> description;
  final Value<bool> fork;
  final Value<String> url;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<DateTime> pushedAt;
  final Value<String> homepage;
  final Value<int> size;
  final Value<int> stargazersCount;
  final Value<int> watchersCount;
  final Value<String> language;
  final Value<int> forksCount;
  final Value<int> openIssuesCount;
  final Value<String> masterBranch;
  final Value<String> defaultBranch;
  final Value<double> score;
  const RepoItemsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.nodeId = const Value.absent(),
    this.name = const Value.absent(),
    this.fullName = const Value.absent(),
    this.private = const Value.absent(),
    this.htmlUrl = const Value.absent(),
    this.description = const Value.absent(),
    this.fork = const Value.absent(),
    this.url = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.pushedAt = const Value.absent(),
    this.homepage = const Value.absent(),
    this.size = const Value.absent(),
    this.stargazersCount = const Value.absent(),
    this.watchersCount = const Value.absent(),
    this.language = const Value.absent(),
    this.forksCount = const Value.absent(),
    this.openIssuesCount = const Value.absent(),
    this.masterBranch = const Value.absent(),
    this.defaultBranch = const Value.absent(),
    this.score = const Value.absent(),
  });
  RepoItemsCompanion.insert({
    this.id = const Value.absent(),
    @required int userId,
    @required String nodeId,
    @required String name,
    @required String fullName,
    @required bool private,
    @required String htmlUrl,
    @required String description,
    @required bool fork,
    @required String url,
    @required DateTime createdAt,
    @required DateTime updatedAt,
    @required DateTime pushedAt,
    @required String homepage,
    @required int size,
    @required int stargazersCount,
    @required int watchersCount,
    @required String language,
    @required int forksCount,
    @required int openIssuesCount,
    @required String masterBranch,
    @required String defaultBranch,
    @required double score,
  })  : userId = Value(userId),
        nodeId = Value(nodeId),
        name = Value(name),
        fullName = Value(fullName),
        private = Value(private),
        htmlUrl = Value(htmlUrl),
        description = Value(description),
        fork = Value(fork),
        url = Value(url),
        createdAt = Value(createdAt),
        updatedAt = Value(updatedAt),
        pushedAt = Value(pushedAt),
        homepage = Value(homepage),
        size = Value(size),
        stargazersCount = Value(stargazersCount),
        watchersCount = Value(watchersCount),
        language = Value(language),
        forksCount = Value(forksCount),
        openIssuesCount = Value(openIssuesCount),
        masterBranch = Value(masterBranch),
        defaultBranch = Value(defaultBranch),
        score = Value(score);
  static Insertable<RepoItem> custom({
    Expression<int> id,
    Expression<int> userId,
    Expression<String> nodeId,
    Expression<String> name,
    Expression<String> fullName,
    Expression<bool> private,
    Expression<String> htmlUrl,
    Expression<String> description,
    Expression<bool> fork,
    Expression<String> url,
    Expression<DateTime> createdAt,
    Expression<DateTime> updatedAt,
    Expression<DateTime> pushedAt,
    Expression<String> homepage,
    Expression<int> size,
    Expression<int> stargazersCount,
    Expression<int> watchersCount,
    Expression<String> language,
    Expression<int> forksCount,
    Expression<int> openIssuesCount,
    Expression<String> masterBranch,
    Expression<String> defaultBranch,
    Expression<double> score,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (nodeId != null) 'node_id': nodeId,
      if (name != null) 'name': name,
      if (fullName != null) 'full_name': fullName,
      if (private != null) 'private': private,
      if (htmlUrl != null) 'html_url': htmlUrl,
      if (description != null) 'description': description,
      if (fork != null) 'fork': fork,
      if (url != null) 'url': url,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (pushedAt != null) 'pushed_at': pushedAt,
      if (homepage != null) 'homepage': homepage,
      if (size != null) 'size': size,
      if (stargazersCount != null) 'stargazers_count': stargazersCount,
      if (watchersCount != null) 'watchers_count': watchersCount,
      if (language != null) 'language': language,
      if (forksCount != null) 'forks_count': forksCount,
      if (openIssuesCount != null) 'open_issues_count': openIssuesCount,
      if (masterBranch != null) 'master_branch': masterBranch,
      if (defaultBranch != null) 'default_branch': defaultBranch,
      if (score != null) 'score': score,
    });
  }

  RepoItemsCompanion copyWith(
      {Value<int> id,
      Value<int> userId,
      Value<String> nodeId,
      Value<String> name,
      Value<String> fullName,
      Value<bool> private,
      Value<String> htmlUrl,
      Value<String> description,
      Value<bool> fork,
      Value<String> url,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<DateTime> pushedAt,
      Value<String> homepage,
      Value<int> size,
      Value<int> stargazersCount,
      Value<int> watchersCount,
      Value<String> language,
      Value<int> forksCount,
      Value<int> openIssuesCount,
      Value<String> masterBranch,
      Value<String> defaultBranch,
      Value<double> score}) {
    return RepoItemsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      nodeId: nodeId ?? this.nodeId,
      name: name ?? this.name,
      fullName: fullName ?? this.fullName,
      private: private ?? this.private,
      htmlUrl: htmlUrl ?? this.htmlUrl,
      description: description ?? this.description,
      fork: fork ?? this.fork,
      url: url ?? this.url,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      pushedAt: pushedAt ?? this.pushedAt,
      homepage: homepage ?? this.homepage,
      size: size ?? this.size,
      stargazersCount: stargazersCount ?? this.stargazersCount,
      watchersCount: watchersCount ?? this.watchersCount,
      language: language ?? this.language,
      forksCount: forksCount ?? this.forksCount,
      openIssuesCount: openIssuesCount ?? this.openIssuesCount,
      masterBranch: masterBranch ?? this.masterBranch,
      defaultBranch: defaultBranch ?? this.defaultBranch,
      score: score ?? this.score,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (nodeId.present) {
      map['node_id'] = Variable<String>(nodeId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (private.present) {
      map['private'] = Variable<bool>(private.value);
    }
    if (htmlUrl.present) {
      map['html_url'] = Variable<String>(htmlUrl.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (fork.present) {
      map['fork'] = Variable<bool>(fork.value);
    }
    if (url.present) {
      map['url'] = Variable<String>(url.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (pushedAt.present) {
      map['pushed_at'] = Variable<DateTime>(pushedAt.value);
    }
    if (homepage.present) {
      map['homepage'] = Variable<String>(homepage.value);
    }
    if (size.present) {
      map['size'] = Variable<int>(size.value);
    }
    if (stargazersCount.present) {
      map['stargazers_count'] = Variable<int>(stargazersCount.value);
    }
    if (watchersCount.present) {
      map['watchers_count'] = Variable<int>(watchersCount.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (forksCount.present) {
      map['forks_count'] = Variable<int>(forksCount.value);
    }
    if (openIssuesCount.present) {
      map['open_issues_count'] = Variable<int>(openIssuesCount.value);
    }
    if (masterBranch.present) {
      map['master_branch'] = Variable<String>(masterBranch.value);
    }
    if (defaultBranch.present) {
      map['default_branch'] = Variable<String>(defaultBranch.value);
    }
    if (score.present) {
      map['score'] = Variable<double>(score.value);
    }
    return map;
  }
}

class $RepoItemsTable extends RepoItems
    with TableInfo<$RepoItemsTable, RepoItem> {
  final GeneratedDatabase _db;
  final String _alias;
  $RepoItemsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedIntColumn _userId;
  @override
  GeneratedIntColumn get userId => _userId ??= _constructUserId();
  GeneratedIntColumn _constructUserId() {
    return GeneratedIntColumn(
      'user_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nodeIdMeta = const VerificationMeta('nodeId');
  GeneratedTextColumn _nodeId;
  @override
  GeneratedTextColumn get nodeId => _nodeId ??= _constructNodeId();
  GeneratedTextColumn _constructNodeId() {
    return GeneratedTextColumn(
      'node_id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fullNameMeta = const VerificationMeta('fullName');
  GeneratedTextColumn _fullName;
  @override
  GeneratedTextColumn get fullName => _fullName ??= _constructFullName();
  GeneratedTextColumn _constructFullName() {
    return GeneratedTextColumn(
      'full_name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _privateMeta = const VerificationMeta('private');
  GeneratedBoolColumn _private;
  @override
  GeneratedBoolColumn get private => _private ??= _constructPrivate();
  GeneratedBoolColumn _constructPrivate() {
    return GeneratedBoolColumn(
      'private',
      $tableName,
      false,
    );
  }

  final VerificationMeta _htmlUrlMeta = const VerificationMeta('htmlUrl');
  GeneratedTextColumn _htmlUrl;
  @override
  GeneratedTextColumn get htmlUrl => _htmlUrl ??= _constructHtmlUrl();
  GeneratedTextColumn _constructHtmlUrl() {
    return GeneratedTextColumn(
      'html_url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _forkMeta = const VerificationMeta('fork');
  GeneratedBoolColumn _fork;
  @override
  GeneratedBoolColumn get fork => _fork ??= _constructFork();
  GeneratedBoolColumn _constructFork() {
    return GeneratedBoolColumn(
      'fork',
      $tableName,
      false,
    );
  }

  final VerificationMeta _urlMeta = const VerificationMeta('url');
  GeneratedTextColumn _url;
  @override
  GeneratedTextColumn get url => _url ??= _constructUrl();
  GeneratedTextColumn _constructUrl() {
    return GeneratedTextColumn(
      'url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _updatedAtMeta = const VerificationMeta('updatedAt');
  GeneratedDateTimeColumn _updatedAt;
  @override
  GeneratedDateTimeColumn get updatedAt => _updatedAt ??= _constructUpdatedAt();
  GeneratedDateTimeColumn _constructUpdatedAt() {
    return GeneratedDateTimeColumn(
      'updated_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _pushedAtMeta = const VerificationMeta('pushedAt');
  GeneratedDateTimeColumn _pushedAt;
  @override
  GeneratedDateTimeColumn get pushedAt => _pushedAt ??= _constructPushedAt();
  GeneratedDateTimeColumn _constructPushedAt() {
    return GeneratedDateTimeColumn(
      'pushed_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _homepageMeta = const VerificationMeta('homepage');
  GeneratedTextColumn _homepage;
  @override
  GeneratedTextColumn get homepage => _homepage ??= _constructHomepage();
  GeneratedTextColumn _constructHomepage() {
    return GeneratedTextColumn(
      'homepage',
      $tableName,
      false,
    );
  }

  final VerificationMeta _sizeMeta = const VerificationMeta('size');
  GeneratedIntColumn _size;
  @override
  GeneratedIntColumn get size => _size ??= _constructSize();
  GeneratedIntColumn _constructSize() {
    return GeneratedIntColumn(
      'size',
      $tableName,
      false,
    );
  }

  final VerificationMeta _stargazersCountMeta =
      const VerificationMeta('stargazersCount');
  GeneratedIntColumn _stargazersCount;
  @override
  GeneratedIntColumn get stargazersCount =>
      _stargazersCount ??= _constructStargazersCount();
  GeneratedIntColumn _constructStargazersCount() {
    return GeneratedIntColumn(
      'stargazers_count',
      $tableName,
      false,
    );
  }

  final VerificationMeta _watchersCountMeta =
      const VerificationMeta('watchersCount');
  GeneratedIntColumn _watchersCount;
  @override
  GeneratedIntColumn get watchersCount =>
      _watchersCount ??= _constructWatchersCount();
  GeneratedIntColumn _constructWatchersCount() {
    return GeneratedIntColumn(
      'watchers_count',
      $tableName,
      false,
    );
  }

  final VerificationMeta _languageMeta = const VerificationMeta('language');
  GeneratedTextColumn _language;
  @override
  GeneratedTextColumn get language => _language ??= _constructLanguage();
  GeneratedTextColumn _constructLanguage() {
    return GeneratedTextColumn(
      'language',
      $tableName,
      false,
    );
  }

  final VerificationMeta _forksCountMeta = const VerificationMeta('forksCount');
  GeneratedIntColumn _forksCount;
  @override
  GeneratedIntColumn get forksCount => _forksCount ??= _constructForksCount();
  GeneratedIntColumn _constructForksCount() {
    return GeneratedIntColumn(
      'forks_count',
      $tableName,
      false,
    );
  }

  final VerificationMeta _openIssuesCountMeta =
      const VerificationMeta('openIssuesCount');
  GeneratedIntColumn _openIssuesCount;
  @override
  GeneratedIntColumn get openIssuesCount =>
      _openIssuesCount ??= _constructOpenIssuesCount();
  GeneratedIntColumn _constructOpenIssuesCount() {
    return GeneratedIntColumn(
      'open_issues_count',
      $tableName,
      false,
    );
  }

  final VerificationMeta _masterBranchMeta =
      const VerificationMeta('masterBranch');
  GeneratedTextColumn _masterBranch;
  @override
  GeneratedTextColumn get masterBranch =>
      _masterBranch ??= _constructMasterBranch();
  GeneratedTextColumn _constructMasterBranch() {
    return GeneratedTextColumn(
      'master_branch',
      $tableName,
      false,
    );
  }

  final VerificationMeta _defaultBranchMeta =
      const VerificationMeta('defaultBranch');
  GeneratedTextColumn _defaultBranch;
  @override
  GeneratedTextColumn get defaultBranch =>
      _defaultBranch ??= _constructDefaultBranch();
  GeneratedTextColumn _constructDefaultBranch() {
    return GeneratedTextColumn(
      'default_branch',
      $tableName,
      false,
    );
  }

  final VerificationMeta _scoreMeta = const VerificationMeta('score');
  GeneratedRealColumn _score;
  @override
  GeneratedRealColumn get score => _score ??= _constructScore();
  GeneratedRealColumn _constructScore() {
    return GeneratedRealColumn(
      'score',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [
        id,
        userId,
        nodeId,
        name,
        fullName,
        private,
        htmlUrl,
        description,
        fork,
        url,
        createdAt,
        updatedAt,
        pushedAt,
        homepage,
        size,
        stargazersCount,
        watchersCount,
        language,
        forksCount,
        openIssuesCount,
        masterBranch,
        defaultBranch,
        score
      ];
  @override
  $RepoItemsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'repo_items';
  @override
  final String actualTableName = 'repo_items';
  @override
  VerificationContext validateIntegrity(Insertable<RepoItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('node_id')) {
      context.handle(_nodeIdMeta,
          nodeId.isAcceptableOrUnknown(data['node_id'], _nodeIdMeta));
    } else if (isInserting) {
      context.missing(_nodeIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name'], _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('private')) {
      context.handle(_privateMeta,
          private.isAcceptableOrUnknown(data['private'], _privateMeta));
    } else if (isInserting) {
      context.missing(_privateMeta);
    }
    if (data.containsKey('html_url')) {
      context.handle(_htmlUrlMeta,
          htmlUrl.isAcceptableOrUnknown(data['html_url'], _htmlUrlMeta));
    } else if (isInserting) {
      context.missing(_htmlUrlMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('fork')) {
      context.handle(
          _forkMeta, fork.isAcceptableOrUnknown(data['fork'], _forkMeta));
    } else if (isInserting) {
      context.missing(_forkMeta);
    }
    if (data.containsKey('url')) {
      context.handle(
          _urlMeta, url.isAcceptableOrUnknown(data['url'], _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at'], _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at'], _updatedAtMeta));
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('pushed_at')) {
      context.handle(_pushedAtMeta,
          pushedAt.isAcceptableOrUnknown(data['pushed_at'], _pushedAtMeta));
    } else if (isInserting) {
      context.missing(_pushedAtMeta);
    }
    if (data.containsKey('homepage')) {
      context.handle(_homepageMeta,
          homepage.isAcceptableOrUnknown(data['homepage'], _homepageMeta));
    } else if (isInserting) {
      context.missing(_homepageMeta);
    }
    if (data.containsKey('size')) {
      context.handle(
          _sizeMeta, size.isAcceptableOrUnknown(data['size'], _sizeMeta));
    } else if (isInserting) {
      context.missing(_sizeMeta);
    }
    if (data.containsKey('stargazers_count')) {
      context.handle(
          _stargazersCountMeta,
          stargazersCount.isAcceptableOrUnknown(
              data['stargazers_count'], _stargazersCountMeta));
    } else if (isInserting) {
      context.missing(_stargazersCountMeta);
    }
    if (data.containsKey('watchers_count')) {
      context.handle(
          _watchersCountMeta,
          watchersCount.isAcceptableOrUnknown(
              data['watchers_count'], _watchersCountMeta));
    } else if (isInserting) {
      context.missing(_watchersCountMeta);
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language'], _languageMeta));
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    if (data.containsKey('forks_count')) {
      context.handle(
          _forksCountMeta,
          forksCount.isAcceptableOrUnknown(
              data['forks_count'], _forksCountMeta));
    } else if (isInserting) {
      context.missing(_forksCountMeta);
    }
    if (data.containsKey('open_issues_count')) {
      context.handle(
          _openIssuesCountMeta,
          openIssuesCount.isAcceptableOrUnknown(
              data['open_issues_count'], _openIssuesCountMeta));
    } else if (isInserting) {
      context.missing(_openIssuesCountMeta);
    }
    if (data.containsKey('master_branch')) {
      context.handle(
          _masterBranchMeta,
          masterBranch.isAcceptableOrUnknown(
              data['master_branch'], _masterBranchMeta));
    } else if (isInserting) {
      context.missing(_masterBranchMeta);
    }
    if (data.containsKey('default_branch')) {
      context.handle(
          _defaultBranchMeta,
          defaultBranch.isAcceptableOrUnknown(
              data['default_branch'], _defaultBranchMeta));
    } else if (isInserting) {
      context.missing(_defaultBranchMeta);
    }
    if (data.containsKey('score')) {
      context.handle(
          _scoreMeta, score.isAcceptableOrUnknown(data['score'], _scoreMeta));
    } else if (isInserting) {
      context.missing(_scoreMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RepoItem map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return RepoItem.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $RepoItemsTable createAlias(String alias) {
    return $RepoItemsTable(_db, alias);
  }
}

abstract class _$RepoSearchDatabase extends GeneratedDatabase {
  _$RepoSearchDatabase(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  $UsersTable _users;
  $UsersTable get users => _users ??= $UsersTable(this);
  $RepoItemsTable _repoItems;
  $RepoItemsTable get repoItems => _repoItems ??= $RepoItemsTable(this);
  RepoSearchBaseDao _repoSearchBaseDao;
  RepoSearchBaseDao get repoSearchBaseDao =>
      _repoSearchBaseDao ??= RepoSearchBaseDao(this as RepoSearchDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [users, repoItems];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$RepoSearchBaseDaoMixin on DatabaseAccessor<RepoSearchDatabase> {
  $UsersTable get users => attachedDatabase.users;
  $RepoItemsTable get repoItems => attachedDatabase.repoItems;
}
