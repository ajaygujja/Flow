// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feelings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeelingsModel _$$_FeelingsModelFromJson(Map<String, dynamic> json) =>
    _$_FeelingsModel(
      status: json['status'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeelingsModelToJson(_$_FeelingsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      feelingPercentage: FeelingPercentage.fromJson(
          json['feelingPercentage'] as Map<String, dynamic>),
      feelingList: (json['feelingList'] as List<dynamic>)
          .map((e) => FeelingList.fromJson(e as Map<String, dynamic>))
          .toList(),
      videoArr: (json['videoArr'] as List<dynamic>)
          .map((e) => VideoArr.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'feelingPercentage': instance.feelingPercentage,
      'feelingList': instance.feelingList,
      'videoArr': instance.videoArr,
    };

_$_FeelingList _$$_FeelingListFromJson(Map<String, dynamic> json) =>
    _$_FeelingList(
      userFeelingId: json['userFeelingId'] as String,
      feelingId: json['feelingId'] as String,
      feelingName: json['feelingName'] as String,
      submitTime: DateTime.parse(json['submitTime'] as String),
    );

Map<String, dynamic> _$$_FeelingListToJson(_$_FeelingList instance) =>
    <String, dynamic>{
      'userFeelingId': instance.userFeelingId,
      'feelingId': instance.feelingId,
      'feelingName': instance.feelingName,
      'submitTime': instance.submitTime.toIso8601String(),
    };

_$_FeelingPercentage _$$_FeelingPercentageFromJson(Map<String, dynamic> json) =>
    _$_FeelingPercentage(
      happy: json['happy'] as String,
      sad: json['sad'] as String,
      energetic: json['energetic'] as String,
      calm: json['calm'] as String,
      angry: json['angry'] as String,
      bored: json['bored'] as String,
    );

Map<String, dynamic> _$$_FeelingPercentageToJson(
        _$_FeelingPercentage instance) =>
    <String, dynamic>{
      'happy': instance.happy,
      'sad': instance.sad,
      'energetic': instance.energetic,
      'calm': instance.calm,
      'angry': instance.angry,
      'bored': instance.bored,
    };

_$_VideoArr _$$_VideoArrFromJson(Map<String, dynamic> json) => _$_VideoArr(
      title: json['title'] as String,
      description: json['description'] as String,
      youtubeUrl: json['youtubeUrl'] as String,
    );

Map<String, dynamic> _$$_VideoArrToJson(_$_VideoArr instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'youtubeUrl': instance.youtubeUrl,
    };
