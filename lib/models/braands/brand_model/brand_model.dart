import 'package:json_annotation/json_annotation.dart';

part 'brand_model.g.dart';

@JsonSerializable()
class BrandModel {
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'description')
  String? description;
  @JsonKey(name: 'image')
  String? image;

  BrandModel({this.id, this.name, this.description, this.image});

  factory BrandModel.fromJson(Map<String, dynamic> json) {
    return _$BrandModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$BrandModelToJson(this);
}
