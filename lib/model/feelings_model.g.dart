// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feelings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FeelingsModel _$$_FeelingsModelFromJson(Map<String, dynamic> json) =>
    _$_FeelingsModel(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : UserFeelingsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_FeelingsModelToJson(_$_FeelingsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$_UserFeelingsData _$$_UserFeelingsDataFromJson(Map<String, dynamic> json) =>
    _$_UserFeelingsData(
      feelingPercentage: FeelingPercentage.fromJson(
          json['feeling_percentage'] as Map<String, dynamic>),
      feelingList: (json['feeling_list'] as List<dynamic>)
          .map((e) => FeelingList.fromJson(e as Map<String, dynamic>))
          .toList(),
      videoArr: (json['video_arr'] as List<dynamic>)
          .map((e) => VideoArr.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserFeelingsDataToJson(_$_UserFeelingsData instance) =>
    <String, dynamic>{
      'feeling_percentage': instance.feelingPercentage,
      'feeling_list': instance.feelingList,
      'video_arr': instance.videoArr,
    };

_$_FeelingList _$$_FeelingListFromJson(Map<String, dynamic> json) =>
    _$_FeelingList(
      userFeelingId: json['user_feeling_id'] as String,
      feelingId: json['feeling_id'] as String,
      feelingName: json['feeling_name'] as String,
      submitTime: DateTime.parse(json['submit_time'] as String),
    );

Map<String, dynamic> _$$_FeelingListToJson(_$_FeelingList instance) =>
    <String, dynamic>{
      'user_feeling_id': instance.userFeelingId,
      'feeling_id': instance.feelingId,
      'feeling_name': instance.feelingName,
      'submit_time': instance.submitTime.toIso8601String(),
    };

_$_FeelingPercentage _$$_FeelingPercentageFromJson(Map<String, dynamic> json) =>
    _$_FeelingPercentage(
      happy: json['Happy'] as String,
      sad: json['Sad'] as String,
      energetic: json['Energetic'] as String,
      calm: json['Calm'] as String,
      angry: json['Angry'] as String,
      bored: json['Bored'] as String,
    );

Map<String, dynamic> _$$_FeelingPercentageToJson(
        _$_FeelingPercentage instance) =>
    <String, dynamic>{
      'Happy': instance.happy,
      'Sad': instance.sad,
      'Energetic': instance.energetic,
      'Calm': instance.calm,
      'Angry': instance.angry,
      'Bored': instance.bored,
    };

_$_VideoArr _$$_VideoArrFromJson(Map<String, dynamic> json) => _$_VideoArr(
      title: json['title'] as String,
      description: json['description'] as String,
      youtubeUrl: json['youtube_url'] as String,
    );

Map<String, dynamic> _$$_VideoArrToJson(_$_VideoArr instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'youtube_url': instance.youtubeUrl,
    };
