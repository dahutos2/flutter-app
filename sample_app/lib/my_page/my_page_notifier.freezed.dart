// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'my_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MyPageStateTearOff {
  const _$MyPageStateTearOff();

  _MyPageState call(
      {String? weight,
      String? comment,
      List<Map<String?, String?>> record = const []}) {
    return _MyPageState(
      weight: weight,
      comment: comment,
      record: record,
    );
  }
}

/// @nodoc
const $MyPageState = _$MyPageStateTearOff();

/// @nodoc
mixin _$MyPageState {
  String? get weight => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  List<Map<String?, String?>> get record => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MyPageStateCopyWith<MyPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyPageStateCopyWith<$Res> {
  factory $MyPageStateCopyWith(
          MyPageState value, $Res Function(MyPageState) then) =
      _$MyPageStateCopyWithImpl<$Res>;
  $Res call(
      {String? weight, String? comment, List<Map<String?, String?>> record});
}

/// @nodoc
class _$MyPageStateCopyWithImpl<$Res> implements $MyPageStateCopyWith<$Res> {
  _$MyPageStateCopyWithImpl(this._value, this._then);

  final MyPageState _value;
  // ignore: unused_field
  final $Res Function(MyPageState) _then;

  @override
  $Res call({
    Object? weight = freezed,
    Object? comment = freezed,
    Object? record = freezed,
  }) {
    return _then(_value.copyWith(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      record: record == freezed
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as List<Map<String?, String?>>,
    ));
  }
}

/// @nodoc
abstract class _$MyPageStateCopyWith<$Res>
    implements $MyPageStateCopyWith<$Res> {
  factory _$MyPageStateCopyWith(
          _MyPageState value, $Res Function(_MyPageState) then) =
      __$MyPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? weight, String? comment, List<Map<String?, String?>> record});
}

/// @nodoc
class __$MyPageStateCopyWithImpl<$Res> extends _$MyPageStateCopyWithImpl<$Res>
    implements _$MyPageStateCopyWith<$Res> {
  __$MyPageStateCopyWithImpl(
      _MyPageState _value, $Res Function(_MyPageState) _then)
      : super(_value, (v) => _then(v as _MyPageState));

  @override
  _MyPageState get _value => super._value as _MyPageState;

  @override
  $Res call({
    Object? weight = freezed,
    Object? comment = freezed,
    Object? record = freezed,
  }) {
    return _then(_MyPageState(
      weight: weight == freezed
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      record: record == freezed
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as List<Map<String?, String?>>,
    ));
  }
}

/// @nodoc

class _$_MyPageState with DiagnosticableTreeMixin implements _MyPageState {
  const _$_MyPageState({this.weight, this.comment, this.record = const []});

  @override
  final String? weight;
  @override
  final String? comment;
  @JsonKey(defaultValue: const [])
  @override
  final List<Map<String?, String?>> record;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyPageState(weight: $weight, comment: $comment, record: $record)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyPageState'))
      ..add(DiagnosticsProperty('weight', weight))
      ..add(DiagnosticsProperty('comment', comment))
      ..add(DiagnosticsProperty('record', record));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyPageState &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.record, record) ||
                const DeepCollectionEquality().equals(other.record, record)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(record);

  @JsonKey(ignore: true)
  @override
  _$MyPageStateCopyWith<_MyPageState> get copyWith =>
      __$MyPageStateCopyWithImpl<_MyPageState>(this, _$identity);
}

abstract class _MyPageState implements MyPageState {
  const factory _MyPageState(
      {String? weight,
      String? comment,
      List<Map<String?, String?>> record}) = _$_MyPageState;

  @override
  String? get weight => throw _privateConstructorUsedError;
  @override
  String? get comment => throw _privateConstructorUsedError;
  @override
  List<Map<String?, String?>> get record => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyPageStateCopyWith<_MyPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
