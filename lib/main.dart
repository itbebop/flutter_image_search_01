import 'package:flutter/material.dart';
import 'package:flutter_image_search_01/data/data_source/photo_data_source.dart';
import 'package:flutter_image_search_01/data/repository/photo_repository_impl.dart';
import 'package:flutter_image_search_01/presentation/search_list/search_list_screen.dart';
import 'package:flutter_image_search_01/presentation/search_list/search_list_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (BuildContext context) => SearchListViewModel(
            photoRepositoryImpl: PhotoRepositoryImpl(
          photoDataSource: PhotoDataSource(),
        )),
        child: SearchListScreen(
          viewModel: SearchListViewModel(photoRepositoryImpl: PhotoRepositoryImpl(photoDataSource: PhotoDataSource())),
        ),
      ),
    );
  }
}
