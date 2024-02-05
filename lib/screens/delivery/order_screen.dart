import 'package:coffeeshop/screens/delivery/deliver_page.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Order'),
          centerTitle: true,
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize
                .tab, // Set to make indicator cover the full width
            dividerColor: Colors.transparent,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorPadding: const EdgeInsets.symmetric(
                horizontal: 25.0), // Set the horizontal padding here
            indicator: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(15.0), // Set the border radius
                color: const Color(
                    0xffc67c4e) // Set the background color for the selected tab
                ),
            tabs: const <Widget>[
              Tab(
                child: Text('Deliver'),
              ),
              Tab(
                child: Text('Pickup'),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            DeliverPage(),
            Center(child: Text('Pickup Page')),
          ],
        ),
      ),
    );
  }
}
