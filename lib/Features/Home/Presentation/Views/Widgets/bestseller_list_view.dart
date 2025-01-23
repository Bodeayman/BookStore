import 'package:flutter/material.dart';

import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/bestseller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        //height of the children
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: BestSellerListViewItem(),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
