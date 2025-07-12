import 'package:flutter/material.dart';
import 'package:learning_app/base/res/media.dart';
import 'package:learning_app/base/res/styles/app_styles.dart';
import 'package:learning_app/base/widgets/app_double_text.dart';
import 'package:learning_app/base/widgets/ticket_view.dart';


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
          // ✅ Wrap Row with Padding
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Good Morning Pedro",
                        style: AppStyles.headLineStyle3),
                    Text("Book Tickets",
                        style: AppStyles.headLineStyle),
                  ],
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(image: AssetImage(AppMedia.logo))
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 5),

          // ✅ Another Row
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFFF4F6FD),
            ),
            child: Row(
              children: const [
                Icon(Icons.search,color: Colors.amber,),
                Text("search",style:TextStyle(fontSize: 16,)),
              ],
            ),
          ),
          const SizedBox(height: 40),

          // ✅ AppDoubleText section
          AppDoubleText(
            bigText: "Upcoming Flights",
            smallText: "View All",
            onTap: () {
              // Add logic here if needed
            },
          ),
          const SizedBox(height: 20),
          TicketView()
        ],
       
      ),
    );
  }
}
