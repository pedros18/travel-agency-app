import 'package:flutter/material.dart';
import 'package:learning_app/base/res/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({
    Key? key,
    required this.bigText,
    required this.smallText,
    this.onTap,
  }) : super(key: key);

  final String bigText;
  final String smallText;
  final VoidCallback? onTap; // Optional callback when smallText is tapped

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: AppStyles.headLineStyle2,
        ),
        GestureDetector(
          onTap: onTap ?? () {},
          child: Text(
            smallText,
            style: AppStyles.textStyle.copyWith(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
