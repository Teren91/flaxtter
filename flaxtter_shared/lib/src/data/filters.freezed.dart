// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ComboFilter<T> _$ComboFilterFromJson<T>(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'and':
      return AndFilter<T>.fromJson(json);
    case 'or':
      return OrFilter<T>.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ComboFilter',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ComboFilter<T> {
  List<Filter<T>> get filters => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Filter<T>> filters) and,
    required TResult Function(List<Filter<T>> filters) or,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Filter<T>> filters)? and,
    TResult? Function(List<Filter<T>> filters)? or,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Filter<T>> filters)? and,
    TResult Function(List<Filter<T>> filters)? or,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndFilter<T> value) and,
    required TResult Function(OrFilter<T> value) or,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndFilter<T> value)? and,
    TResult? Function(OrFilter<T> value)? or,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndFilter<T> value)? and,
    TResult Function(OrFilter<T> value)? or,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ComboFilterCopyWith<T, ComboFilter<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComboFilterCopyWith<T, $Res> {
  factory $ComboFilterCopyWith(
          ComboFilter<T> value, $Res Function(ComboFilter<T>) then) =
      _$ComboFilterCopyWithImpl<T, $Res, ComboFilter<T>>;
  @useResult
  $Res call({List<Filter<T>> filters});
}

/// @nodoc
class _$ComboFilterCopyWithImpl<T, $Res, $Val extends ComboFilter<T>>
    implements $ComboFilterCopyWith<T, $Res> {
  _$ComboFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_value.copyWith(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filter<T>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AndFilterImplCopyWith<T, $Res>
    implements $ComboFilterCopyWith<T, $Res> {
  factory _$$AndFilterImplCopyWith(
          _$AndFilterImpl<T> value, $Res Function(_$AndFilterImpl<T>) then) =
      __$$AndFilterImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<Filter<T>> filters});
}

/// @nodoc
class __$$AndFilterImplCopyWithImpl<T, $Res>
    extends _$ComboFilterCopyWithImpl<T, $Res, _$AndFilterImpl<T>>
    implements _$$AndFilterImplCopyWith<T, $Res> {
  __$$AndFilterImplCopyWithImpl(
      _$AndFilterImpl<T> _value, $Res Function(_$AndFilterImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_$AndFilterImpl<T>(
      null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filter<T>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AndFilterImpl<T> implements AndFilter<T> {
  const _$AndFilterImpl(final List<Filter<T>> filters, {final String? $type})
      : _filters = filters,
        $type = $type ?? 'and';

  factory _$AndFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$AndFilterImplFromJson(json);

  final List<Filter<T>> _filters;
  @override
  List<Filter<T>> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ComboFilter<$T>.and(filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AndFilterImpl<T> &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AndFilterImplCopyWith<T, _$AndFilterImpl<T>> get copyWith =>
      __$$AndFilterImplCopyWithImpl<T, _$AndFilterImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Filter<T>> filters) and,
    required TResult Function(List<Filter<T>> filters) or,
  }) {
    return and(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Filter<T>> filters)? and,
    TResult? Function(List<Filter<T>> filters)? or,
  }) {
    return and?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Filter<T>> filters)? and,
    TResult Function(List<Filter<T>> filters)? or,
    required TResult orElse(),
  }) {
    if (and != null) {
      return and(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndFilter<T> value) and,
    required TResult Function(OrFilter<T> value) or,
  }) {
    return and(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndFilter<T> value)? and,
    TResult? Function(OrFilter<T> value)? or,
  }) {
    return and?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndFilter<T> value)? and,
    TResult Function(OrFilter<T> value)? or,
    required TResult orElse(),
  }) {
    if (and != null) {
      return and(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AndFilterImplToJson<T>(
      this,
    );
  }
}

abstract class AndFilter<T> implements ComboFilter<T> {
  const factory AndFilter(final List<Filter<T>> filters) = _$AndFilterImpl<T>;

  factory AndFilter.fromJson(Map<String, dynamic> json) =
      _$AndFilterImpl<T>.fromJson;

  @override
  List<Filter<T>> get filters;
  @override
  @JsonKey(ignore: true)
  _$$AndFilterImplCopyWith<T, _$AndFilterImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OrFilterImplCopyWith<T, $Res>
    implements $ComboFilterCopyWith<T, $Res> {
  factory _$$OrFilterImplCopyWith(
          _$OrFilterImpl<T> value, $Res Function(_$OrFilterImpl<T>) then) =
      __$$OrFilterImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<Filter<T>> filters});
}

/// @nodoc
class __$$OrFilterImplCopyWithImpl<T, $Res>
    extends _$ComboFilterCopyWithImpl<T, $Res, _$OrFilterImpl<T>>
    implements _$$OrFilterImplCopyWith<T, $Res> {
  __$$OrFilterImplCopyWithImpl(
      _$OrFilterImpl<T> _value, $Res Function(_$OrFilterImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
  }) {
    return _then(_$OrFilterImpl<T>(
      null == filters
          ? _value._filters
          : filters // ignore: cast_nullable_to_non_nullable
              as List<Filter<T>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrFilterImpl<T> implements OrFilter<T> {
  const _$OrFilterImpl(final List<Filter<T>> filters, {final String? $type})
      : _filters = filters,
        $type = $type ?? 'or';

  factory _$OrFilterImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrFilterImplFromJson(json);

  final List<Filter<T>> _filters;
  @override
  List<Filter<T>> get filters {
    if (_filters is EqualUnmodifiableListView) return _filters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filters);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ComboFilter<$T>.or(filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrFilterImpl<T> &&
            const DeepCollectionEquality().equals(other._filters, _filters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_filters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrFilterImplCopyWith<T, _$OrFilterImpl<T>> get copyWith =>
      __$$OrFilterImplCopyWithImpl<T, _$OrFilterImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Filter<T>> filters) and,
    required TResult Function(List<Filter<T>> filters) or,
  }) {
    return or(filters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Filter<T>> filters)? and,
    TResult? Function(List<Filter<T>> filters)? or,
  }) {
    return or?.call(filters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Filter<T>> filters)? and,
    TResult Function(List<Filter<T>> filters)? or,
    required TResult orElse(),
  }) {
    if (or != null) {
      return or(filters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AndFilter<T> value) and,
    required TResult Function(OrFilter<T> value) or,
  }) {
    return or(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AndFilter<T> value)? and,
    TResult? Function(OrFilter<T> value)? or,
  }) {
    return or?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AndFilter<T> value)? and,
    TResult Function(OrFilter<T> value)? or,
    required TResult orElse(),
  }) {
    if (or != null) {
      return or(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OrFilterImplToJson<T>(
      this,
    );
  }
}

abstract class OrFilter<T> implements ComboFilter<T> {
  const factory OrFilter(final List<Filter<T>> filters) = _$OrFilterImpl<T>;

  factory OrFilter.fromJson(Map<String, dynamic> json) =
      _$OrFilterImpl<T>.fromJson;

  @override
  List<Filter<T>> get filters;
  @override
  @JsonKey(ignore: true)
  _$$OrFilterImplCopyWith<T, _$OrFilterImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
