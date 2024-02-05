import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios_new),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.favorite_outline),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/cappucino.png',
              width: MediaQuery.of(context).size.width,
              height: 200,
              fit: BoxFit.contain,
            ),
            const Text.rich(
              TextSpan(
                text: 'Cappucino',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
                children: [
                  TextSpan(
                    text: '\nwith Chocolate',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xffc3c3c3),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                const Icon(Icons.star, color: Color(0xfffbbe21)),
                const Text.rich(
                  TextSpan(
                    text: '4.8',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: '(230)',
                        style: TextStyle(
                          color: Color(0xffc3c3c3),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Image.asset(
                  'assets/images/coffee-beans.png',
                  height: 25,
                  width: 25,
                  fit: BoxFit.contain,
                  color: const Color(0xffc67c4e),
                ),
                const SizedBox(width: 15),
                Image.asset(
                  'assets/images/milk.png',
                  height: 25,
                  width: 25,
                  fit: BoxFit.contain,
                  color: const Color(0xffc67c4e),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Divider(
              height: 1,
              thickness: 1,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 10),
            const Text.rich(
              TextSpan(
                text: 'Description\n',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  TextSpan(
                      style: TextStyle(
                        color: Color(0xffc3c3c3),
                        fontWeight: FontWeight.w400,
                      ),
                      text:
                          'A Cappucino is an extremely 150ml(5 oz) beverage,with 25 ml of expresso coffee and 85 ml of fresh milk the fo..'),
                  TextSpan(
                      text: 'Read More',
                      style: TextStyle(color: Color(0xffc67c4e))),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Size',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            _buildTabview(context),
            _buildTabBarview(context),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8.0,
              spreadRadius: 3.0,
              offset: const Offset(0,
                  1), // You can adjust the offset to control the shadow direction
            ),
          ],
        ),
        height: 85,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                      color: Color(0xffc3c3c3),
                    ),
                  ),
                  Text(
                    "\$ 4.53",
                    style: TextStyle(
                      color: Color(0xffc67c4e),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                alignment: Alignment.center,
                width: 200,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xffc67c4e),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Buy Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 42,
      // width: 345,
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        labelColor: const Color(0xffc67c4e),
        controller: tabviewController,
        labelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: Colors.black,
        unselectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.blue, // Set color for unselected tabs
        ),
        indicator: BoxDecoration(
          border: Border.all(color: const Color(0xffc67c4e)),
          color: const Color(0xfffff5ee),
          borderRadius: BorderRadius.circular(12),
        ),
        tabs: const [
          Tab(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 8.0), // Adjust padding as needed
              child: Text("S"),
            ),
          ),
          Tab(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 8.0), // Adjust padding as needed
              child: Text("M"),
            ),
          ),
          Tab(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 8.0), // Adjust padding as needed
              child: Text("L"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBarview(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: tabviewController,
        children: const [
          Center(child: Text('')),
          Center(child: Text('')),
          Center(child: Text('')),
        ],
      ),
    );
  }
}
