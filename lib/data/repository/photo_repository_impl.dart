// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_image_search_01/data/data_source/photo_data_source.dart';
import 'package:flutter_image_search_01/data/mapper/photo_mapper.dart';
import 'package:flutter_image_search_01/data/model/photo.dart';
import 'package:flutter_image_search_01/data/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository {
  final PhotoDataSource _photoDataSource;

  PhotoRepositoryImpl({
    required PhotoDataSource photoDataSource,
  }) : _photoDataSource = photoDataSource;

  @override
  Future<List<Photo>> getPhotos(String query) async {
    // await 주의1
    final dto = await _photoDataSource.getPhotoResult(query);

    if (dto.hits == null) {
      return [];
    }
    return dto.hits!.map((e) => e.toPhoto()).toList();
  }
}
