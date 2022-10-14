// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coffee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Coffee _$CoffeeFromJson(Map<String, dynamic> json) {
  return _Coffee.fromJson(json);
}

/// @nodoc
mixin _$Coffee {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoffeeCopyWith<Coffee> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoffeeCopyWith<$Res> {
  factory $CoffeeCopyWith(Coffee value, $Res Function(Coffee) then) =
      _$CoffeeCopyWithImpl<$Res>;
  $Res call({String? title, String? description});
}

/// @nodoc
class _$CoffeeCopyWithImpl<$Res> implements $CoffeeCopyWith<$Res> {
  _$CoffeeCopyWithImpl(this._value, this._then);

  final Coffee _value;
  // ignore: unused_field
  final $Res Function(Coffee) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_CoffeeCopyWith<$Res> implements $CoffeeCopyWith<$Res> {
  factory _$$_CoffeeCopyWith(_$_Coffee value, $Res Function(_$_Coffee) then) =
      __$$_CoffeeCopyWithImpl<$Res>;
  @override
  $Res call({String? title, String? description});
}

/// @nodoc
class __$$_CoffeeCopyWithImpl<$Res> extends _$CoffeeCopyWithImpl<$Res>
    implements _$$_CoffeeCopyWith<$Res> {
  __$$_CoffeeCopyWithImpl(_$_Coffee _value, $Res Function(_$_Coffee) _then)
      : super(_value, (v) => _then(v as _$_Coffee));

  @override
  _$_Coffee get _value => super._value as _$_Coffee;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_Coffee(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coffee implements _Coffee {
  _$_Coffee({this.title, this.description});

  factory _$_Coffee.fromJson(Map<String, dynamic> json) =>
      _$$_CoffeeFromJson(json);

  @override
  final String? title;
  @override
  final String? description;

  @override
  String toString() {
    return 'Coffee(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coffee &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_CoffeeCopyWith<_$_Coffee> get copyWith =>
      __$$_CoffeeCopyWithImpl<_$_Coffee>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoffeeToJson(
      this,
    );
  }
}

abstract class _Coffee implements Coffee {
  factory _Coffee({final String? title, final String? description}) = _$_Coffee;

  factory _Coffee.fromJson(Map<String, dynamic> json) = _$_Coffee.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_CoffeeCopyWith<_$_Coffee> get copyWith =>
      throw _privateConstructorUsedError;
}
