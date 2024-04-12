// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_image_search_01/data/model/photo.dart';

import 'package:flutter_image_search_01/data/repository/photo_repository_impl.dart';

class SearchListViewModel with ChangeNotifier {
  final PhotoRepositoryImpl _photoRepositoryImpl;

  SearchListViewModel({
    required PhotoRepositoryImpl photoRepositoryImpl,
  }) : _photoRepositoryImpl = photoRepositoryImpl;

  List<Photo> _photo = [];

  List<Photo> get photo => List.unmodifiable(_photo);
  void fetchPhoto() async {
    _photo = await _photoRepositoryImpl.getPhotos('');
    print('photo : $_photo');
    notifyListeners();
  }

  void onSearch(String query) async {
    _photo = await _photoRepositoryImpl.getPhotos(query);
    print('1111');
    notifyListeners();
  }
}
