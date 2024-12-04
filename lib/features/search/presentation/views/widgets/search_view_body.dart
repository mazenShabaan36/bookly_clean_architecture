import 'package:bookly/features/search/presentation/views/widgets/custom_search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItem(),
          );
        });
  }
}
