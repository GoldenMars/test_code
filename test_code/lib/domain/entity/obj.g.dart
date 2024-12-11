// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'obj.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Obj _$ObjFromJson(Map<String, dynamic> json) => Obj(
      udid: json['udid'],
      simid: json['simid'] as String,
      passwd: json['passwd'] as String?,
    );

Map<String, dynamic> _$ObjToJson(Obj instance) => <String, dynamic>{
      'udid': instance.udid,
      'simid': instance.simid,
      'passwd': instance.passwd,
    };
