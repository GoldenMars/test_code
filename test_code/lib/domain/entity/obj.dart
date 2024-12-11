import 'package:json_annotation/json_annotation.dart';

part 'obj.g.dart';

@JsonSerializable()
class Obj {
  final dynamic udid;
  final String simid;
  final String? passwd;

  Obj({required this.udid, required this.simid, this.passwd});

  factory Obj.fromJson(Map<String, dynamic> json) => _$ObjFromJson(json);
  Map<String, dynamic> toJson() => _$ObjToJson(this);
}
