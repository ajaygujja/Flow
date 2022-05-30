import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'feelings_model.freezed.dart';
part 'feelings_model.g.dart';

FeelingsModel feelingsModelFromJson(String str) =>
    FeelingsModel.fromJson(json.decode(str));

String feelingsModelToJson(FeelingsModel data) => json.encode(data.toJson());

@freezed
abstract class FeelingsModel with _$FeelingsModel {
  const factory FeelingsModel({
    required String status,
    required Data data,
  }) = _FeelingsModel;

  factory FeelingsModel.fromJson(Map<String, dynamic> json) =>
      _$FeelingsModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    required FeelingPercentage feelingPercentage,
    required List<FeelingList> feelingList,
    required List<VideoArr> videoArr,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class FeelingList with _$FeelingList {
  const factory FeelingList({
    required String userFeelingId,
    required String feelingId,
    required String feelingName,
    required DateTime submitTime,
  }) = _FeelingList;

  factory FeelingList.fromJson(Map<String, dynamic> json) =>
      _$FeelingListFromJson(json);
}

@freezed
abstract class FeelingPercentage with _$FeelingPercentage {
  const factory FeelingPercentage({
    required String happy,
    required String sad,
    required String energetic,
    required String calm,
    required String angry,
    required String bored,
  }) = _FeelingPercentage;

  factory FeelingPercentage.fromJson(Map<String, dynamic> json) =>
      _$FeelingPercentageFromJson(json);
}

@freezed
abstract class VideoArr with _$VideoArr {
  const factory VideoArr({
    required String title,
    required String description,
    required String youtubeUrl,
  }) = _VideoArr;

  factory VideoArr.fromJson(Map<String, dynamic> json) =>
      _$VideoArrFromJson(json);
}
