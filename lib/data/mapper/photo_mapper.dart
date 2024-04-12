import 'package:flutter_image_search_01/data/dto/photo_dto/hit.dart';
import 'package:flutter_image_search_01/data/model/photo.dart';

extension ToPhoto on Hit {
  Photo toPhoto() {
    return Photo(
      id: id?.toInt() ?? 0, // 잘못들어온 건 터뜨린다는 것 // ?? 0 안씀
      url: previewUrl ?? '',
      tags: tags ?? '',
    );
  }
}
