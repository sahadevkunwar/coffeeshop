import 'package:coffeeshop/core/global_variable.dart';
import 'package:flutter/material.dart';

class SelectedLine extends StatelessWidget {
  const SelectedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: GlobalVariables.selectedNavBarColor,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 9,
      width: 18, // Set the desired width for the line
    );
  }
}
