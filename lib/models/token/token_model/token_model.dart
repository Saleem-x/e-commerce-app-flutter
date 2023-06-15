import 'package:json_annotation/json_annotation.dart';

part 'token_model.g.dart';

@JsonSerializable()
class TokenModel {
  @JsonKey(name: 'token')
  String? token;

  TokenModel({this.token});

  factory TokenModel.fromJson(Map<String, dynamic> json) {
    return _$TokenModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TokenModelToJson(this);
}
