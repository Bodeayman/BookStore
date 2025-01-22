import 'package:flutter/material.dart';
import 'package:mvvm_practise/Features/Search/Presentation/Views/Widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: SearchViewBody()),
    );
  }
}
