import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'simillar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You Can Also Like",
          style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}
