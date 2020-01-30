import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

@JsonSerializable()
class ModelCBC {
  @JsonKey(defaultValue: 0)
  final double wbc;
  @JsonKey(defaultValue: 0)
  final double hb;
  @JsonKey(defaultValue: 0)
  final double hct;
  @JsonKey(defaultValue: 0)
  final int plt;

  ModelCBC({this.wbc, this.hb, this.hct, this.plt});

  factory ModelCBC.fromJson(Map<String, dynamic> json) =>
      _$ModelCBCFromJson(json);
  Map<String, dynamic> toJson() => _$ModelCBCToJson(this);
}

@JsonSerializable()
class ModelBMP {
  @JsonKey(defaultValue: 0)
  final int na;
  @JsonKey(defaultValue: 0)
  final double k;
  @JsonKey(defaultValue: 0)
  final int cl;
  @JsonKey(defaultValue: 0)
  final int co2;
  @JsonKey(defaultValue: 0)
  final int bun;
  @JsonKey(defaultValue: 0)
  final double creat;
  @JsonKey(defaultValue: 0)
  final int glc;

  ModelBMP(
      {this.na, this.k, this.cl, this.co2, this.bun, this.creat, this.glc});

  factory ModelBMP.fromJson(Map<String, dynamic> json) =>
      _$ModelBMPFromJson(json);
  Map<String, dynamic> toJson() => _$ModelBMPToJson(this);
}
