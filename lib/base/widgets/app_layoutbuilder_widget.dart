import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomDivider;
  const AppLayoutBuilderWidget({super.key, required this.randomDivider});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(randomDivider, (index) {
            return SizedBox(
              width: 3,
              height: 1.5,
              child: DecoratedBox(
                decoration: BoxDecoration(color: Colors.white),
              ),
            );
          }),
        );
      },
    );
  }
}
