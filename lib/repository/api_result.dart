/// API呼び出しの結果を表すクラス
///
/// [statusCode] はHTTPステータスコード、[data] は成功時にデコードされたデータを表す
class ApiResult<T> {
  /// HTTPステータスコード
  final int statusCode;

  /// 成功時にデコードされたデータ
  final T? data;

  /// [statusCode]、[data]を指定して、'ApiResult' オブジェクトを生成する
  ApiResult({required this.statusCode, this.data});

  /// ステータスコードが200番台の場合に、 'true' を返す
  bool get isSuccess {
    return statusCode >= 200 && statusCode < 300;
  }
}
