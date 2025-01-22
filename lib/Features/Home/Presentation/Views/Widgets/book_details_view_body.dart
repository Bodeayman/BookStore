import 'package:flutter/material.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/book_actions_buttons.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/books_details_section.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/custom_book_details_app_bar.dart';
import 'package:mvvm_practise/Features/Home/Presentation/Views/Widgets/similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                SizedBox(
                  height: 37,
                ),
                BooksAction(),
                Expanded(
                  //He will take any height but , the minimum is 50
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}


//Sometimes you should use SafeArea because it will prevent the Notificaiton bar problems
// in our program