import 'dart:convert';

import 'package:base_flutter/app.dart';
import 'package:base_flutter/core/logger/logger_extension.dart';
import 'package:base_flutter/infrastructure/client/lib/api.dart';
import 'package:base_flutter/repository/api_result.dart';
import 'package:base_flutter/repository/response_extension.dart';
import 'package:base_flutter/repository/sample/sample_repository.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

/// サンプルリポジトリ
class SampleRepositoryImpl extends SampleRepository {
  final baseUrl = FlavorConfig.instance.variables["BASE_URL"];

  /// ユーザリストを取得
  @override
  Future<ApiResult<List>> getUsersList() async {
    logger.enter();
    final apiClient = ApiClient(basePath: baseUrl)
      ..addDefaultHeader("Content-Type", "application/json");
    final client = DefaultApi(apiClient);
    try {
      final result = await client.usersGetWithHttpInfo();
      if (result.isSuccess) {
        final body = (await client.apiClient.deserializeAsync(
                utf8.decode(result.bodyBytes),
                'List<UsersGet200ResponseInner>') as List)
            .cast<UsersGet200ResponseInner>()
            .toList(growable: false);
        logger.exit(message: 'status code:${result.statusCode}');
        return ApiResult(statusCode: result.statusCode, data: body);
      } else {
        logger.exit(message: 'status code:${result.statusCode}');
        return ApiResult(statusCode: result.statusCode);
      }
    } catch (e) {
      logger.error(message: e.toString());
      logger.exit();
      rethrow;
    }
  }

  /// ユーザ取得
  @override
  Future<ApiResult<UsersGet200ResponseInner>> getUser() {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  /// ユーザ作成
  @override
  Future<ApiResult<UsersGet200ResponseInner>> createUser() {
    // TODO: implement createUser
    throw UnimplementedError();
  }
}
