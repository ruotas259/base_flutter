// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_startup_view_model_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppStartupViewModelState {
  Result get result => throw _privateConstructorUsedError;

  /// Create a copy of AppStartupViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppStartupViewModelStateCopyWith<AppStartupViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStartupViewModelStateCopyWith<$Res> {
  factory $AppStartupViewModelStateCopyWith(AppStartupViewModelState value,
          $Res Function(AppStartupViewModelState) then) =
      _$AppStartupViewModelStateCopyWithImpl<$Res, AppStartupViewModelState>;
  @useResult
  $Res call({Result result});
}

/// @nodoc
class _$AppStartupViewModelStateCopyWithImpl<$Res,
        $Val extends AppStartupViewModelState>
    implements $AppStartupViewModelStateCopyWith<$Res> {
  _$AppStartupViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppStartupViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStartupViewModelStateImplCopyWith<$Res>
    implements $AppStartupViewModelStateCopyWith<$Res> {
  factory _$$AppStartupViewModelStateImplCopyWith(
          _$AppStartupViewModelStateImpl value,
          $Res Function(_$AppStartupViewModelStateImpl) then) =
      __$$AppStartupViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Result result});
}

/// @nodoc
class __$$AppStartupViewModelStateImplCopyWithImpl<$Res>
    extends _$AppStartupViewModelStateCopyWithImpl<$Res,
        _$AppStartupViewModelStateImpl>
    implements _$$AppStartupViewModelStateImplCopyWith<$Res> {
  __$$AppStartupViewModelStateImplCopyWithImpl(
      _$AppStartupViewModelStateImpl _value,
      $Res Function(_$AppStartupViewModelStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppStartupViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$AppStartupViewModelStateImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result,
    ));
  }
}

/// @nodoc

class _$AppStartupViewModelStateImpl implements _AppStartupViewModelState {
  const _$AppStartupViewModelStateImpl({this.result = Result.none});

  @override
  @JsonKey()
  final Result result;

  @override
  String toString() {
    return 'AppStartupViewModelState(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStartupViewModelStateImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of AppStartupViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStartupViewModelStateImplCopyWith<_$AppStartupViewModelStateImpl>
      get copyWith => __$$AppStartupViewModelStateImplCopyWithImpl<
          _$AppStartupViewModelStateImpl>(this, _$identity);
}

abstract class _AppStartupViewModelState implements AppStartupViewModelState {
  const factory _AppStartupViewModelState({final Result result}) =
      _$AppStartupViewModelStateImpl;

  @override
  Result get result;

  /// Create a copy of AppStartupViewModelState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppStartupViewModelStateImplCopyWith<_$AppStartupViewModelStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
