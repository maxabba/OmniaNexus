// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersStruct extends BaseStruct {
  UsersStruct({
    double? id,
    String? username,
    String? email,
    String? firstName,
    String? lastName,
    String? token,
  })  : _id = id,
        _username = username,
        _email = email,
        _firstName = firstName,
        _lastName = lastName,
        _token = token;

  // "id" field.
  double? _id;
  double get id => _id ?? 0.0;
  set id(double? val) => _id = val;
  void incrementId(double amount) => _id = id + amount;
  bool hasId() => _id != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;
  bool hasUsername() => _username != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  set firstName(String? val) => _firstName = val;
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  set lastName(String? val) => _lastName = val;
  bool hasLastName() => _lastName != null;

  // "token" field.
  String? _token;
  String get token => _token ?? '';
  set token(String? val) => _token = val;
  bool hasToken() => _token != null;

  static UsersStruct fromMap(Map<String, dynamic> data) => UsersStruct(
        id: castToType<double>(data['id']),
        username: data['username'] as String?,
        email: data['email'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        token: data['token'] as String?,
      );

  static UsersStruct? maybeFromMap(dynamic data) =>
      data is Map ? UsersStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'username': _username,
        'email': _email,
        'first_name': _firstName,
        'last_name': _lastName,
        'token': _token,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.double,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'first_name': serializeParam(
          _firstName,
          ParamType.String,
        ),
        'last_name': serializeParam(
          _lastName,
          ParamType.String,
        ),
        'token': serializeParam(
          _token,
          ParamType.String,
        ),
      }.withoutNulls;

  static UsersStruct fromSerializableMap(Map<String, dynamic> data) =>
      UsersStruct(
        id: deserializeParam(
          data['id'],
          ParamType.double,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        firstName: deserializeParam(
          data['first_name'],
          ParamType.String,
          false,
        ),
        lastName: deserializeParam(
          data['last_name'],
          ParamType.String,
          false,
        ),
        token: deserializeParam(
          data['token'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UsersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UsersStruct &&
        id == other.id &&
        username == other.username &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        token == other.token;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, username, email, firstName, lastName, token]);
}

UsersStruct createUsersStruct({
  double? id,
  String? username,
  String? email,
  String? firstName,
  String? lastName,
  String? token,
}) =>
    UsersStruct(
      id: id,
      username: username,
      email: email,
      firstName: firstName,
      lastName: lastName,
      token: token,
    );
