import 'package:flutter/material.dart';
import 'package:mvvm_practise/core/utils/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.23,
      child: AspectRatio(
        aspectRatio: 2.8 / 4,
        // width -> height
        child: Container(
          // width: MediaQuery.of(context).size.width * 0.33,
          //MediaQuery.of(context).size is taking the width and the height of the device
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.red,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetsData.testImage,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
