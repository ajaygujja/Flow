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
    required UserFeelingsData data,
  }) = _FeelingsModel;

  factory FeelingsModel.fromJson(Map<String, dynamic> json) =>
      _$FeelingsModelFromJson(json);
}

@freezed
abstract class UserFeelingsData with _$UserFeelingsData {
  const factory UserFeelingsData({
    @JsonKey(name: 'feeling_percentage')
        required FeelingPercentage feelingPercentage,
    @JsonKey(name: 'feeling_list') required List<FeelingList> feelingList,
    @JsonKey(name: 'video_arr') required List<VideoArr> videoArr,
  }) = _UserFeelingsData;

  factory UserFeelingsData.fromJson(Map<String, dynamic> json) =>
      _$UserFeelingsDataFromJson(json);
}

@freezed
abstract class FeelingList with _$FeelingList {
  const factory FeelingList({
    @JsonKey(name: 'user_feeling_id') required String userFeelingId,
    @JsonKey(name: 'feeling_id') required String feelingId,
    @JsonKey(name: 'feeling_name') required String feelingName,
    @JsonKey(name: 'submit_time') required DateTime submitTime,
  }) = _FeelingList;

  factory FeelingList.fromJson(Map<String, dynamic> json) =>
      _$FeelingListFromJson(json);
}

@freezed
abstract class FeelingPercentage with _$FeelingPercentage {
  const factory FeelingPercentage({
    @JsonKey(name: 'Happy') required String happy,
    @JsonKey(name: 'Sad') required String sad,
    @JsonKey(name: 'Energetic') required String energetic,
    @JsonKey(name: 'Calm') required String calm,
    @JsonKey(name: 'Angry') required String angry,
    @JsonKey(name: 'Bored') required String bored,
  }) = _FeelingPercentage;

  factory FeelingPercentage.fromJson(Map<String, dynamic> json) =>
      _$FeelingPercentageFromJson(json);
}

@freezed
abstract class VideoArr with _$VideoArr {
  const factory VideoArr({
    required String title,
    required String description,
    @JsonKey(name: 'youtube_url') required String youtubeUrl,
  }) = _VideoArr;

  factory VideoArr.fromJson(Map<String, dynamic> json) =>
      _$VideoArrFromJson(json);
}
