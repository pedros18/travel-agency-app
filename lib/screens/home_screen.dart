import 'package:flutter/material.dart';
import 'package:learning_app/base/res/media.dart';
import 'package:learning_app/base/res/styles/app_styles.dart';
import 'package:learning_app/base/widgets/app_double_text.dart';
import 'package:learning_app/base/widgets/hotel_view.dart';
import 'package:learning_app/base/widgets/ticket_view.dart';
import 'package:learning_app/models/tickets_json.dart';

import 'all_tickets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good Morning Pedro", style: AppStyles.headLineStyle3),
                    Text("Book Tickets", style: AppStyles.headLineStyle),
                  ],
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(image: AssetImage(AppMedia.logo)),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF4F6FD),
            ),
            child: Row(
              children: const [
                Icon(Icons.search, color: Colors.amber),
                SizedBox(width: 8),
                Text("Search", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),

          const SizedBox(height: 40),

          AppDoubleText(
            bigText: "Upcoming Flights",
            smallText: "View All",
            onTap: () {
              Navigator.pushNamed(
                context,
                "all_tickets",
              );
            },
          ),
          const SizedBox(height: 20),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList
                  .map((e) => TicketView(ticket: e))
                  .expand((widget) => [widget, const SizedBox(width: 15)])
                  .toList()
                ..removeLast(), // remove the trailing SizedBox
            ),
          ),

          const SizedBox(height: 20),

          AppDoubleText(
            bigText: "Hotels",
            smallText: "View All",
            onTap: () {},
          ),
          const SizedBox(height: 20),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                5,
                    (index) => Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: HotelView(),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
