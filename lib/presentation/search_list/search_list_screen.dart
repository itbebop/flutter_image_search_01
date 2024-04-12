import 'package:flutter/material.dart';
import 'package:flutter_image_search_01/data/data_source/photo_data_source.dart';
import 'package:flutter_image_search_01/data/repository/photo_repository_impl.dart';
import 'package:flutter_image_search_01/presentation/search_list/search_list_view_model.dart';
import 'package:provider/provider.dart';

class SearchListScreen extends StatefulWidget {
  final SearchListViewModel viewModel;
  const SearchListScreen({super.key, required this.viewModel});

  @override
  State<SearchListScreen> createState() => _SearchListScreenState();
}

class _SearchListScreenState extends State<SearchListScreen> {
  final _queryTextEditingController = TextEditingController();

  @override
  void initState() {
    Future.microtask(() {
      final viewModel = context.read<SearchListViewModel>();
      viewModel.fetchPhoto();
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    widget.viewModel.fetchPhoto();
    super.didChangeDependencies();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  void dispose() {
    _queryTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchListViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('이미지 검색 1'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _queryTextEditingController,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              hintText: '검색어',
              suffixIcon: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  final query = _queryTextEditingController.text;
                  viewModel.onSearch(query);
                },
              ),
            ),
          ),
          Expanded(
              child: Center(
            child: GridView.count(
              crossAxisCount: 2,
              children: viewModel.photo
                  .map((e) => ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          e.url,
                          fit: BoxFit.cover,
                        ),
                      ))
                  .toList(),
            ),
          ))
        ],
      ),
    );
  }
}
