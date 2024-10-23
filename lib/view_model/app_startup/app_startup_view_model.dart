import 'package:base_flutter/app.dart';
import 'package:base_flutter/core/logger/logger_extension.dart';
import 'package:base_flutter/view_model/app_startup/app_startup_view_model_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppStartupViewModel extends StateNotifier<AppStartupViewModelState>
    with WidgetsBindingObserver {
  AppStartupViewModel() : super(const AppStartupViewModelState());

  Future<void> init() async {
    logger.enter();
    logger.exit();
  }
}
