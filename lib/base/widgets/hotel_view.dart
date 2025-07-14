import 'package:flutter/material.dart';
import 'package:learning_app/base/res/media.dart';
import 'package:learning_app/base/res/styles/app_styles.dart';

class HotelView extends StatelessWidget {
  const HotelView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: const EdgeInsets.only(right: 16), // spacing between hotel cards
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hotel Image
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              image: DecorationImage(
                image: AssetImage(AppMedia.hotelRoom),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Hotel Info
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sheraton Hotel",
                  style: AppStyles.headLineStyle2.copyWith(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "Oran, Algeria",
                  style: AppStyles.headLineStyle3.copyWith(
                    color: Colors.white70,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "\$250/night",
                  style: AppStyles.headLineStyle.copyWith(
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
