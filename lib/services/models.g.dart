// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelCBC _$ModelCBCFromJson(Map<String, dynamic> json) {
  return ModelCBC(
    wbc: (json['wbc'] as num)?.toDouble() ?? 0,
    hb: (json['hb'] as num)?.toDouble() ?? 0,
    hct: (json['hct'] as num)?.toDouble() ?? 0,
    plt: json['plt'] as int ?? 0,
  );
}

Map<String, dynamic> _$ModelCBCToJson(ModelCBC instance) => <String, dynamic>{
      'wbc': instance.wbc,
      'hb': instance.hb,
      'hct': instance.hct,
      'plt': instance.plt,
    };

ModelBMP _$ModelBMPFromJson(Map<String, dynamic> json) {
  return ModelBMP(
    na: json['na'] as int ?? 0,
    k: (json['k'] as num)?.toDouble() ?? 0,
    cl: json['cl'] as int ?? 0,
    co2: json['co2'] as int ?? 0,
    bun: json['bun'] as int ?? 0,
    creat: (json['creat'] as num)?.toDouble() ?? 0,
    glc: json['glc'] as int ?? 0,
  );
}

Map<String, dynamic> _$ModelBMPToJson(ModelBMP instance) => <String, dynamic>{
      'na': instance.na,
      'k': instance.k,
      'cl': instance.cl,
      'co2': instance.co2,
      'bun': instance.bun,
      'creat': instance.creat,
      'glc': instance.glc,
    };
