import 'package:flutter/material.dart';

import '../base/widgets/ticket_view.dart';
import '../models/tickets_json.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Tickets"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: ticketList.map((ticket) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: TicketView(ticket: ticket),
          );
        }).toList(),
      ),
    );
  }
}
