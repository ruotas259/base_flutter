import 'package:base_flutter/view_model/app_startup/app_startup_view_model.dart';
import 'package:base_flutter/view_model/app_startup/app_startup_view_model_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appStartupProvider =
    StateNotifierProvider<AppStartupViewModel, AppStartupViewModelState>(
  (ref) => AppStartupViewModel(),
);
