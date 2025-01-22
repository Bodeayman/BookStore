import 'package:flutter/widgets.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/bestseller_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      //height of the children
      // physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: BestSellerListViewItem(),
        );
      },
      itemCount: 10,
    );
  }
}
