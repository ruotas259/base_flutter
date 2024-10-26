/// 処理結果定義
enum Result {
  /// 共通
  /// 初期値
  none,

  /// 成功
  success,

  /// 失敗
  fail,

  /// DBエラー
  databaseError,

  /// Preferencesエラー
  preferencesError,

  /// サーバーエラー
  internalServerError,
}
