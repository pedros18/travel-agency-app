import 'package:flutter/material.dart';
import 'package:learning_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:learning_app/base/widgets/big_circle.dart';
import 'package:learning_app/base/widgets/big_dot.dart';
import '../res/styles/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
        width: 300,
      height: 199,
      child: Column(
        children: [
          // ✅ Top half (blue)
          Container(
            height: 179 * 0.5,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left column: Departure code and city
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          ticket['from']['code'],
                          style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          ticket['from']['name'],
                          style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
                        ),
                      ],
                    ),

                    // Center column: airplane icon + duration
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const BigDot(),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    const AppLayoutBuilderWidget(randomDivider: 20),
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
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            ticket['flying_time'],
                            style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),

                    // Right column: Arrival code and city
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          ticket['to']['code'],
                          style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          ticket['to']['name'],
                          style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),

              ],
            ),
          ),

          // ✅ Middle orange section with BigCircles left and right
          Container(
            color: Colors.deepOrange,
            height: 20,
            child: Row(
              children: const [
                BigCircle(isRight: false),
                Expanded(child: AppLayoutBuilderWidget(randomDivider: 30)),
                BigCircle(isRight: true),
              ],
            ),
          ),

          // ✅ Bottom half (orange)
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['date'],
                            style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Date",
                            style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Departure time",
                            style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['number'],
                            style: AppStyles.headLineStyle3.copyWith(color: Colors.white),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Number",
                            style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
                          ),
                        ],
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
