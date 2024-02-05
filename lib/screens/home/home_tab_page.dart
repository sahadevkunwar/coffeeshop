import 'package:coffeeshop/core/global_variable.dart';
import 'package:coffeeshop/screens/home/widgets/tab_page.dart';
import 'package:flutter/material.dart';

class HomeTabContainerPage extends StatefulWidget {
  const HomeTabContainerPage({super.key});

  @override
  State<HomeTabContainerPage> createState() => _HomeTabContainerPageState();
}

class _HomeTabContainerPageState extends State<HomeTabContainerPage>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff9f9f9),
      body: Column(
        children: [
          _buildTabview(context),
          _buildTabBarview(context),
        ],
      ),
    );
  }

  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 38,
      // width: 345,
      child: TabBar(
        dividerColor: Colors.transparent,
        labelColor: Colors.white,
        controller: tabviewController,
        isScrollable: true,
        labelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: Colors.black,
        unselectedLabelStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
        indicator: BoxDecoration(
          color: GlobalVariables.selectedNavBarColor,
          borderRadius: BorderRadius.circular(12),
        ),
        tabs: const [
          Tab(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 8.0), // Adjust padding as needed
              child: Text("Cappuccino"),
            ),
          ),
          Tab(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 8.0), // Adjust padding as needed
              child: Text("Machiato"),
            ),
          ),
          Tab(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 8.0), // Adjust padding as needed
              child: Text("Latte"),
            ),
          ),
          Tab(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 8.0), // Adjust padding as needed
              child: Text("Americano"),
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
          TabBarViewIems(),
          TabBarViewIems(),
          TabBarViewIems(),
          TabBarViewIems(),
        ],
      ),
    );
  }
}
