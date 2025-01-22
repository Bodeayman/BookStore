import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mvvm_practise/Features/Search/Presentation/Views/Widgets/search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          CustomSearchTextField(),
        ],
      ),
    );
  }
}
