import 'package:flutter/material.dart';
import 'package:learning_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:learning_app/base/widgets/big_dot.dart';
import '../res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.85,
      height: 199,
      child: Column(
        children: [
          // ✅ Top half (blue)
          Container(
            height: 179 * 0.5, // Half of the total height
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppStyles.ticketBlue,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(21),
                topRight: Radius.circular(21),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "NCY",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    const BigDot(),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          AppLayoutBuilderWidget(randomDivider: 10),
                          Transform.rotate(
                            angle: 1.5,
                            child: const Icon(
                              Icons.local_airport_rounded,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 5),
                    const BigDot(),
                    const Spacer(),
                    Text(
                      "LDN",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Text(
                      "New-York",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      "8H 30M",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                    const Spacer(),
                    Text(
                      "London",
                      style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 20,
            color: AppStyles.ticketOrange,
          ),
          // bottom half (white section)
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppStyles.ticketOrange,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NCY",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      const BigDot(),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            AppLayoutBuilderWidget(randomDivider: 10),
                            Transform.rotate(
                              angle: 1.5,
                              child: const Icon(
                                Icons.local_airport_rounded,
                                color: Colors.white,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 5),
                      const BigDot(),
                      const Spacer(),
                      Text(
                        "LDN",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "New-York",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      Text(
                        "8H 30M",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      Text(
                        "London",
                        style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
