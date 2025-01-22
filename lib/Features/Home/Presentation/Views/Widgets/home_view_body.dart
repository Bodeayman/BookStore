import 'package:flutter/material.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/bestseller_list_view.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/custom_app_bar.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/featured_list_view.dart';
import 'package:mvvm_practise/core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
