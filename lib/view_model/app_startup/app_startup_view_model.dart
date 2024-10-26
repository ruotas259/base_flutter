import 'package:base_flutter/app.dart';
import 'package:base_flutter/constant/enum/result.dart';
import 'package:base_flutter/core/logger/logger_extension.dart';
import 'package:base_flutter/view_model/app_startup/app_startup_view_model_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppStartupViewModel extends StateNotifier<AppStartupViewModelState>
    with WidgetsBindingObserver {
  AppStartupViewModel() : super(const AppStartupViewModelState());

  /// [AppStartupViewModel]で実行された処理の結果を設定、Widget へ通知
  ///
  /// [result] 結果
  void setResult(Result result) => state = state.copyWith(result: result);

  Future<void> init() async {
    logger.enter();
    await Future.delayed(const Duration(seconds: 2));
    setResult(Result.success);
    logger.exit();
  }
}
