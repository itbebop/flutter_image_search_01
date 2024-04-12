import 'package:flutter_image_search_01/data/model/photo.dart';

abstract interface class PhotoRepository {
  //void getPhotos(String query);
  Future<List<Photo>> getPhotos(String query);
}
