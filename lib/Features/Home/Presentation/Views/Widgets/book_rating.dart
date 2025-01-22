import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mvvm_practise/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  //Make this variable as constructor
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 14,
        ),
        SizedBox(
          width: 6.3,
        ),
        Text("4.8", style: Styles.textStyle16),
        SizedBox(
          width: 6.3,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            "(245)",
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
