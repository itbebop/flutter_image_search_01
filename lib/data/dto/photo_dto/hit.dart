// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'hit.g.dart';

@JsonSerializable()
class Hits {
  int? id;
  @JsonKey(name: 'pageURL')
  String? pageUrl;
  String? type;
  String? tags;
  @JsonKey(name: 'previewURL')
  String? previewUrl;
  int? previewWidth;
  int? previewHeight;
  @JsonKey(name: 'webformatURL')
  String? webformatUrl;
  int? webformatWidth;
  int? webformatHeight;
  @JsonKey(name: 'largeImageURL')
  String? largeImageUrl;
  int? imageWidth;
  int? imageHeight;
  int? imageSize;
  int? views;
  int? downloads;
  int? collections;
  int? likes;
  int? comments;
  @JsonKey(name: 'user_id')
  int? userId;
  String? user;
  @JsonKey(name: 'userImageURL')
  String? userImageUrl;

  Hits({
    this.id,
    this.pageUrl,
    this.type,
    this.tags,
    this.previewUrl,
    this.previewWidth,
    this.previewHeight,
    this.webformatUrl,
    this.webformatWidth,
    this.webformatHeight,
    this.largeImageUrl,
    this.imageWidth,
    this.imageHeight,
    this.imageSize,
    this.views,
    this.downloads,
    this.collections,
    this.likes,
    this.comments,
    this.userId,
    this.user,
    this.userImageUrl,
  });

  factory Hits.fromJson(Map<String, dynamic> json) => _$HitFromJson(json);

  Map<String, dynamic> toJson() => _$HitToJson(this);

  @override
  String toString() {
    return 'Hits(id: $id, pageUrl: $pageUrl, type: $type, tags: $tags, previewUrl: $previewUrl, previewWidth: $previewWidth, previewHeight: $previewHeight, webformatUrl: $webformatUrl, webformatWidth: $webformatWidth, webformatHeight: $webformatHeight, largeImageUrl: $largeImageUrl, imageWidth: $imageWidth, imageHeight: $imageHeight, imageSize: $imageSize, views: $views, downloads: $downloads, collections: $collections, likes: $likes, comments: $comments, userId: $userId, user: $user, userImageUrl: $userImageUrl)';
  }
}
