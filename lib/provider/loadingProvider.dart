import 'package:flutter_riverpod/flutter_riverpod.dart';

/// ローディングの表示有無
final loadingProvider = NotifierProvider<LoadingNotifier, bool>(
  LoadingNotifier.new,
);

class LoadingNotifier extends Notifier<bool> {
  @override
  bool build() => false;

  /// ローディングを表示する
  void show() => state = true;

  /// ローディングを非表示にする
  void hide() => state = false;

  /// 表示状態を取得する
  bool isLoading() => state;
}
