// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'feelings_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FeelingsModel _$FeelingsModelFromJson(Map<String, dynamic> json) {
  return _FeelingsModel.fromJson(json);
}

/// @nodoc
mixin _$FeelingsModel {
  String get status => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeelingsModelCopyWith<FeelingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelingsModelCopyWith<$Res> {
  factory $FeelingsModelCopyWith(
          FeelingsModel value, $Res Function(FeelingsModel) then) =
      _$FeelingsModelCopyWithImpl<$Res>;
  $Res call({String status, Data data});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$FeelingsModelCopyWithImpl<$Res>
    implements $FeelingsModelCopyWith<$Res> {
  _$FeelingsModelCopyWithImpl(this._value, this._then);

  final FeelingsModel _value;
  // ignore: unused_field
  final $Res Function(FeelingsModel) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }

  @override
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_FeelingsModelCopyWith<$Res>
    implements $FeelingsModelCopyWith<$Res> {
  factory _$$_FeelingsModelCopyWith(
          _$_FeelingsModel value, $Res Function(_$_FeelingsModel) then) =
      __$$_FeelingsModelCopyWithImpl<$Res>;
  @override
  $Res call({String status, Data data});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FeelingsModelCopyWithImpl<$Res>
    extends _$FeelingsModelCopyWithImpl<$Res>
    implements _$$_FeelingsModelCopyWith<$Res> {
  __$$_FeelingsModelCopyWithImpl(
      _$_FeelingsModel _value, $Res Function(_$_FeelingsModel) _then)
      : super(_value, (v) => _then(v as _$_FeelingsModel));

  @override
  _$_FeelingsModel get _value => super._value as _$_FeelingsModel;

  @override
  $Res call({
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_FeelingsModel(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeelingsModel implements _FeelingsModel {
  const _$_FeelingsModel({required this.status, required this.data});

  factory _$_FeelingsModel.fromJson(Map<String, dynamic> json) =>
      _$$_FeelingsModelFromJson(json);

  @override
  final String status;
  @override
  final Data data;

  @override
  String toString() {
    return 'FeelingsModel(status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeelingsModel &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_FeelingsModelCopyWith<_$_FeelingsModel> get copyWith =>
      __$$_FeelingsModelCopyWithImpl<_$_FeelingsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeelingsModelToJson(this);
  }
}

abstract class _FeelingsModel implements FeelingsModel {
  const factory _FeelingsModel(
      {required final String status,
      required final Data data}) = _$_FeelingsModel;

  factory _FeelingsModel.fromJson(Map<String, dynamic> json) =
      _$_FeelingsModel.fromJson;

  @override
  String get status => throw _privateConstructorUsedError;
  @override
  Data get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FeelingsModelCopyWith<_$_FeelingsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  FeelingPercentage get feelingPercentage => throw _privateConstructorUsedError;
  List<FeelingList> get feelingList => throw _privateConstructorUsedError;
  List<VideoArr> get videoArr => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call(
      {FeelingPercentage feelingPercentage,
      List<FeelingList> feelingList,
      List<VideoArr> videoArr});

  $FeelingPercentageCopyWith<$Res> get feelingPercentage;
}

/// @nodoc
class _$DataCopyWithImpl<$Res> implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  final Data _value;
  // ignore: unused_field
  final $Res Function(Data) _then;

  @override
  $Res call({
    Object? feelingPercentage = freezed,
    Object? feelingList = freezed,
    Object? videoArr = freezed,
  }) {
    return _then(_value.copyWith(
      feelingPercentage: feelingPercentage == freezed
          ? _value.feelingPercentage
          : feelingPercentage // ignore: cast_nullable_to_non_nullable
              as FeelingPercentage,
      feelingList: feelingList == freezed
          ? _value.feelingList
          : feelingList // ignore: cast_nullable_to_non_nullable
              as List<FeelingList>,
      videoArr: videoArr == freezed
          ? _value.videoArr
          : videoArr // ignore: cast_nullable_to_non_nullable
              as List<VideoArr>,
    ));
  }

  @override
  $FeelingPercentageCopyWith<$Res> get feelingPercentage {
    return $FeelingPercentageCopyWith<$Res>(_value.feelingPercentage, (value) {
      return _then(_value.copyWith(feelingPercentage: value));
    });
  }
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  $Res call(
      {FeelingPercentage feelingPercentage,
      List<FeelingList> feelingList,
      List<VideoArr> videoArr});

  @override
  $FeelingPercentageCopyWith<$Res> get feelingPercentage;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$DataCopyWithImpl<$Res>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, (v) => _then(v as _$_Data));

  @override
  _$_Data get _value => super._value as _$_Data;

  @override
  $Res call({
    Object? feelingPercentage = freezed,
    Object? feelingList = freezed,
    Object? videoArr = freezed,
  }) {
    return _then(_$_Data(
      feelingPercentage: feelingPercentage == freezed
          ? _value.feelingPercentage
          : feelingPercentage // ignore: cast_nullable_to_non_nullable
              as FeelingPercentage,
      feelingList: feelingList == freezed
          ? _value._feelingList
          : feelingList // ignore: cast_nullable_to_non_nullable
              as List<FeelingList>,
      videoArr: videoArr == freezed
          ? _value._videoArr
          : videoArr // ignore: cast_nullable_to_non_nullable
              as List<VideoArr>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Data implements _Data {
  const _$_Data(
      {required this.feelingPercentage,
      required final List<FeelingList> feelingList,
      required final List<VideoArr> videoArr})
      : _feelingList = feelingList,
        _videoArr = videoArr;

  factory _$_Data.fromJson(Map<String, dynamic> json) => _$$_DataFromJson(json);

  @override
  final FeelingPercentage feelingPercentage;
  final List<FeelingList> _feelingList;
  @override
  List<FeelingList> get feelingList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feelingList);
  }

  final List<VideoArr> _videoArr;
  @override
  List<VideoArr> get videoArr {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videoArr);
  }

  @override
  String toString() {
    return 'Data(feelingPercentage: $feelingPercentage, feelingList: $feelingList, videoArr: $videoArr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality()
                .equals(other.feelingPercentage, feelingPercentage) &&
            const DeepCollectionEquality()
                .equals(other._feelingList, _feelingList) &&
            const DeepCollectionEquality().equals(other._videoArr, _videoArr));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(feelingPercentage),
      const DeepCollectionEquality().hash(_feelingList),
      const DeepCollectionEquality().hash(_videoArr));

  @JsonKey(ignore: true)
  @override
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataToJson(this);
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {required final FeelingPercentage feelingPercentage,
      required final List<FeelingList> feelingList,
      required final List<VideoArr> videoArr}) = _$_Data;

  factory _Data.fromJson(Map<String, dynamic> json) = _$_Data.fromJson;

  @override
  FeelingPercentage get feelingPercentage => throw _privateConstructorUsedError;
  @override
  List<FeelingList> get feelingList => throw _privateConstructorUsedError;
  @override
  List<VideoArr> get videoArr => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

FeelingList _$FeelingListFromJson(Map<String, dynamic> json) {
  return _FeelingList.fromJson(json);
}

/// @nodoc
mixin _$FeelingList {
  String get userFeelingId => throw _privateConstructorUsedError;
  String get feelingId => throw _privateConstructorUsedError;
  String get feelingName => throw _privateConstructorUsedError;
  DateTime get submitTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeelingListCopyWith<FeelingList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelingListCopyWith<$Res> {
  factory $FeelingListCopyWith(
          FeelingList value, $Res Function(FeelingList) then) =
      _$FeelingListCopyWithImpl<$Res>;
  $Res call(
      {String userFeelingId,
      String feelingId,
      String feelingName,
      DateTime submitTime});
}

/// @nodoc
class _$FeelingListCopyWithImpl<$Res> implements $FeelingListCopyWith<$Res> {
  _$FeelingListCopyWithImpl(this._value, this._then);

  final FeelingList _value;
  // ignore: unused_field
  final $Res Function(FeelingList) _then;

  @override
  $Res call({
    Object? userFeelingId = freezed,
    Object? feelingId = freezed,
    Object? feelingName = freezed,
    Object? submitTime = freezed,
  }) {
    return _then(_value.copyWith(
      userFeelingId: userFeelingId == freezed
          ? _value.userFeelingId
          : userFeelingId // ignore: cast_nullable_to_non_nullable
              as String,
      feelingId: feelingId == freezed
          ? _value.feelingId
          : feelingId // ignore: cast_nullable_to_non_nullable
              as String,
      feelingName: feelingName == freezed
          ? _value.feelingName
          : feelingName // ignore: cast_nullable_to_non_nullable
              as String,
      submitTime: submitTime == freezed
          ? _value.submitTime
          : submitTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_FeelingListCopyWith<$Res>
    implements $FeelingListCopyWith<$Res> {
  factory _$$_FeelingListCopyWith(
          _$_FeelingList value, $Res Function(_$_FeelingList) then) =
      __$$_FeelingListCopyWithImpl<$Res>;
  @override
  $Res call(
      {String userFeelingId,
      String feelingId,
      String feelingName,
      DateTime submitTime});
}

/// @nodoc
class __$$_FeelingListCopyWithImpl<$Res> extends _$FeelingListCopyWithImpl<$Res>
    implements _$$_FeelingListCopyWith<$Res> {
  __$$_FeelingListCopyWithImpl(
      _$_FeelingList _value, $Res Function(_$_FeelingList) _then)
      : super(_value, (v) => _then(v as _$_FeelingList));

  @override
  _$_FeelingList get _value => super._value as _$_FeelingList;

  @override
  $Res call({
    Object? userFeelingId = freezed,
    Object? feelingId = freezed,
    Object? feelingName = freezed,
    Object? submitTime = freezed,
  }) {
    return _then(_$_FeelingList(
      userFeelingId: userFeelingId == freezed
          ? _value.userFeelingId
          : userFeelingId // ignore: cast_nullable_to_non_nullable
              as String,
      feelingId: feelingId == freezed
          ? _value.feelingId
          : feelingId // ignore: cast_nullable_to_non_nullable
              as String,
      feelingName: feelingName == freezed
          ? _value.feelingName
          : feelingName // ignore: cast_nullable_to_non_nullable
              as String,
      submitTime: submitTime == freezed
          ? _value.submitTime
          : submitTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeelingList implements _FeelingList {
  const _$_FeelingList(
      {required this.userFeelingId,
      required this.feelingId,
      required this.feelingName,
      required this.submitTime});

  factory _$_FeelingList.fromJson(Map<String, dynamic> json) =>
      _$$_FeelingListFromJson(json);

  @override
  final String userFeelingId;
  @override
  final String feelingId;
  @override
  final String feelingName;
  @override
  final DateTime submitTime;

  @override
  String toString() {
    return 'FeelingList(userFeelingId: $userFeelingId, feelingId: $feelingId, feelingName: $feelingName, submitTime: $submitTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeelingList &&
            const DeepCollectionEquality()
                .equals(other.userFeelingId, userFeelingId) &&
            const DeepCollectionEquality().equals(other.feelingId, feelingId) &&
            const DeepCollectionEquality()
                .equals(other.feelingName, feelingName) &&
            const DeepCollectionEquality()
                .equals(other.submitTime, submitTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userFeelingId),
      const DeepCollectionEquality().hash(feelingId),
      const DeepCollectionEquality().hash(feelingName),
      const DeepCollectionEquality().hash(submitTime));

  @JsonKey(ignore: true)
  @override
  _$$_FeelingListCopyWith<_$_FeelingList> get copyWith =>
      __$$_FeelingListCopyWithImpl<_$_FeelingList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeelingListToJson(this);
  }
}

abstract class _FeelingList implements FeelingList {
  const factory _FeelingList(
      {required final String userFeelingId,
      required final String feelingId,
      required final String feelingName,
      required final DateTime submitTime}) = _$_FeelingList;

  factory _FeelingList.fromJson(Map<String, dynamic> json) =
      _$_FeelingList.fromJson;

  @override
  String get userFeelingId => throw _privateConstructorUsedError;
  @override
  String get feelingId => throw _privateConstructorUsedError;
  @override
  String get feelingName => throw _privateConstructorUsedError;
  @override
  DateTime get submitTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FeelingListCopyWith<_$_FeelingList> get copyWith =>
      throw _privateConstructorUsedError;
}

FeelingPercentage _$FeelingPercentageFromJson(Map<String, dynamic> json) {
  return _FeelingPercentage.fromJson(json);
}

/// @nodoc
mixin _$FeelingPercentage {
  String get happy => throw _privateConstructorUsedError;
  String get sad => throw _privateConstructorUsedError;
  String get energetic => throw _privateConstructorUsedError;
  String get calm => throw _privateConstructorUsedError;
  String get angry => throw _privateConstructorUsedError;
  String get bored => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeelingPercentageCopyWith<FeelingPercentage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeelingPercentageCopyWith<$Res> {
  factory $FeelingPercentageCopyWith(
          FeelingPercentage value, $Res Function(FeelingPercentage) then) =
      _$FeelingPercentageCopyWithImpl<$Res>;
  $Res call(
      {String happy,
      String sad,
      String energetic,
      String calm,
      String angry,
      String bored});
}

/// @nodoc
class _$FeelingPercentageCopyWithImpl<$Res>
    implements $FeelingPercentageCopyWith<$Res> {
  _$FeelingPercentageCopyWithImpl(this._value, this._then);

  final FeelingPercentage _value;
  // ignore: unused_field
  final $Res Function(FeelingPercentage) _then;

  @override
  $Res call({
    Object? happy = freezed,
    Object? sad = freezed,
    Object? energetic = freezed,
    Object? calm = freezed,
    Object? angry = freezed,
    Object? bored = freezed,
  }) {
    return _then(_value.copyWith(
      happy: happy == freezed
          ? _value.happy
          : happy // ignore: cast_nullable_to_non_nullable
              as String,
      sad: sad == freezed
          ? _value.sad
          : sad // ignore: cast_nullable_to_non_nullable
              as String,
      energetic: energetic == freezed
          ? _value.energetic
          : energetic // ignore: cast_nullable_to_non_nullable
              as String,
      calm: calm == freezed
          ? _value.calm
          : calm // ignore: cast_nullable_to_non_nullable
              as String,
      angry: angry == freezed
          ? _value.angry
          : angry // ignore: cast_nullable_to_non_nullable
              as String,
      bored: bored == freezed
          ? _value.bored
          : bored // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_FeelingPercentageCopyWith<$Res>
    implements $FeelingPercentageCopyWith<$Res> {
  factory _$$_FeelingPercentageCopyWith(_$_FeelingPercentage value,
          $Res Function(_$_FeelingPercentage) then) =
      __$$_FeelingPercentageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String happy,
      String sad,
      String energetic,
      String calm,
      String angry,
      String bored});
}

/// @nodoc
class __$$_FeelingPercentageCopyWithImpl<$Res>
    extends _$FeelingPercentageCopyWithImpl<$Res>
    implements _$$_FeelingPercentageCopyWith<$Res> {
  __$$_FeelingPercentageCopyWithImpl(
      _$_FeelingPercentage _value, $Res Function(_$_FeelingPercentage) _then)
      : super(_value, (v) => _then(v as _$_FeelingPercentage));

  @override
  _$_FeelingPercentage get _value => super._value as _$_FeelingPercentage;

  @override
  $Res call({
    Object? happy = freezed,
    Object? sad = freezed,
    Object? energetic = freezed,
    Object? calm = freezed,
    Object? angry = freezed,
    Object? bored = freezed,
  }) {
    return _then(_$_FeelingPercentage(
      happy: happy == freezed
          ? _value.happy
          : happy // ignore: cast_nullable_to_non_nullable
              as String,
      sad: sad == freezed
          ? _value.sad
          : sad // ignore: cast_nullable_to_non_nullable
              as String,
      energetic: energetic == freezed
          ? _value.energetic
          : energetic // ignore: cast_nullable_to_non_nullable
              as String,
      calm: calm == freezed
          ? _value.calm
          : calm // ignore: cast_nullable_to_non_nullable
              as String,
      angry: angry == freezed
          ? _value.angry
          : angry // ignore: cast_nullable_to_non_nullable
              as String,
      bored: bored == freezed
          ? _value.bored
          : bored // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FeelingPercentage implements _FeelingPercentage {
  const _$_FeelingPercentage(
      {required this.happy,
      required this.sad,
      required this.energetic,
      required this.calm,
      required this.angry,
      required this.bored});

  factory _$_FeelingPercentage.fromJson(Map<String, dynamic> json) =>
      _$$_FeelingPercentageFromJson(json);

  @override
  final String happy;
  @override
  final String sad;
  @override
  final String energetic;
  @override
  final String calm;
  @override
  final String angry;
  @override
  final String bored;

  @override
  String toString() {
    return 'FeelingPercentage(happy: $happy, sad: $sad, energetic: $energetic, calm: $calm, angry: $angry, bored: $bored)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FeelingPercentage &&
            const DeepCollectionEquality().equals(other.happy, happy) &&
            const DeepCollectionEquality().equals(other.sad, sad) &&
            const DeepCollectionEquality().equals(other.energetic, energetic) &&
            const DeepCollectionEquality().equals(other.calm, calm) &&
            const DeepCollectionEquality().equals(other.angry, angry) &&
            const DeepCollectionEquality().equals(other.bored, bored));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(happy),
      const DeepCollectionEquality().hash(sad),
      const DeepCollectionEquality().hash(energetic),
      const DeepCollectionEquality().hash(calm),
      const DeepCollectionEquality().hash(angry),
      const DeepCollectionEquality().hash(bored));

  @JsonKey(ignore: true)
  @override
  _$$_FeelingPercentageCopyWith<_$_FeelingPercentage> get copyWith =>
      __$$_FeelingPercentageCopyWithImpl<_$_FeelingPercentage>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FeelingPercentageToJson(this);
  }
}

abstract class _FeelingPercentage implements FeelingPercentage {
  const factory _FeelingPercentage(
      {required final String happy,
      required final String sad,
      required final String energetic,
      required final String calm,
      required final String angry,
      required final String bored}) = _$_FeelingPercentage;

  factory _FeelingPercentage.fromJson(Map<String, dynamic> json) =
      _$_FeelingPercentage.fromJson;

  @override
  String get happy => throw _privateConstructorUsedError;
  @override
  String get sad => throw _privateConstructorUsedError;
  @override
  String get energetic => throw _privateConstructorUsedError;
  @override
  String get calm => throw _privateConstructorUsedError;
  @override
  String get angry => throw _privateConstructorUsedError;
  @override
  String get bored => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FeelingPercentageCopyWith<_$_FeelingPercentage> get copyWith =>
      throw _privateConstructorUsedError;
}

VideoArr _$VideoArrFromJson(Map<String, dynamic> json) {
  return _VideoArr.fromJson(json);
}

/// @nodoc
mixin _$VideoArr {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get youtubeUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VideoArrCopyWith<VideoArr> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoArrCopyWith<$Res> {
  factory $VideoArrCopyWith(VideoArr value, $Res Function(VideoArr) then) =
      _$VideoArrCopyWithImpl<$Res>;
  $Res call({String title, String description, String youtubeUrl});
}

/// @nodoc
class _$VideoArrCopyWithImpl<$Res> implements $VideoArrCopyWith<$Res> {
  _$VideoArrCopyWithImpl(this._value, this._then);

  final VideoArr _value;
  // ignore: unused_field
  final $Res Function(VideoArr) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? youtubeUrl = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      youtubeUrl: youtubeUrl == freezed
          ? _value.youtubeUrl
          : youtubeUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VideoArrCopyWith<$Res> implements $VideoArrCopyWith<$Res> {
  factory _$$_VideoArrCopyWith(
          _$_VideoArr value, $Res Function(_$_VideoArr) then) =
      __$$_VideoArrCopyWithImpl<$Res>;
  @override
  $Res call({String title, String description, String youtubeUrl});
}

/// @nodoc
class __$$_VideoArrCopyWithImpl<$Res> extends _$VideoArrCopyWithImpl<$Res>
    implements _$$_VideoArrCopyWith<$Res> {
  __$$_VideoArrCopyWithImpl(
      _$_VideoArr _value, $Res Function(_$_VideoArr) _then)
      : super(_value, (v) => _then(v as _$_VideoArr));

  @override
  _$_VideoArr get _value => super._value as _$_VideoArr;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? youtubeUrl = freezed,
  }) {
    return _then(_$_VideoArr(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      youtubeUrl: youtubeUrl == freezed
          ? _value.youtubeUrl
          : youtubeUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VideoArr implements _VideoArr {
  const _$_VideoArr(
      {required this.title,
      required this.description,
      required this.youtubeUrl});

  factory _$_VideoArr.fromJson(Map<String, dynamic> json) =>
      _$$_VideoArrFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String youtubeUrl;

  @override
  String toString() {
    return 'VideoArr(title: $title, description: $description, youtubeUrl: $youtubeUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoArr &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.youtubeUrl, youtubeUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(youtubeUrl));

  @JsonKey(ignore: true)
  @override
  _$$_VideoArrCopyWith<_$_VideoArr> get copyWith =>
      __$$_VideoArrCopyWithImpl<_$_VideoArr>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VideoArrToJson(this);
  }
}

abstract class _VideoArr implements VideoArr {
  const factory _VideoArr(
      {required final String title,
      required final String description,
      required final String youtubeUrl}) = _$_VideoArr;

  factory _VideoArr.fromJson(Map<String, dynamic> json) = _$_VideoArr.fromJson;

  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  String get youtubeUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_VideoArrCopyWith<_$_VideoArr> get copyWith =>
      throw _privateConstructorUsedError;
}
