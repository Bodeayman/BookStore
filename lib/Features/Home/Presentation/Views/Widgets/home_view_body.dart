import 'package:flutter/material.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/custom_app_bar.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/custom_list_view.dart';
import 'package:mvvm_practise/core/utils/assets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppBar(),
        CustomListViewItem(),
      ],
    );
  }
}
