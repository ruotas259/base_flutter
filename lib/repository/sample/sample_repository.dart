import 'package:base_flutter/repository/api_result.dart';
import 'package:openapi/api.dart';

/// サンプルリポジトリ
abstract class SampleRepository {
  /// ユーザリストを取得
  Future<ApiResult<List>> getUsersList();

  /// ユーザ取得
  Future<ApiResult<UsersGet200ResponseInner>> getUser();

  /// ユーザ作成
  Future<ApiResult<UsersGet200ResponseInner>> createUser();
}
