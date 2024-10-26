import 'package:base_flutter/constant/enum/result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_startup_view_model_state.freezed.dart';

@freezed
abstract class AppStartupViewModelState with _$AppStartupViewModelState {
  const factory AppStartupViewModelState({
    @Default(Result.none) Result result,
  }) = _AppStartupViewModelState;
}
