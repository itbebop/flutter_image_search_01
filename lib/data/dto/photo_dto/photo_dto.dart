// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'hit.dart';

part 'photo_dto.g.dart';

@JsonSerializable()
class PhotoDto {
  int? total;
  int? totalHits;
  List<Hits>? hits;

  PhotoDto({this.total, this.totalHits, this.hits});

  factory PhotoDto.fromJson(Map<String, dynamic> json) {
    return _$PhotoDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PhotoDtoToJson(this);

  @override
  String toString() => 'PhotoDto(total: $total, totalHits: $totalHits, hits: $hits)';
}
