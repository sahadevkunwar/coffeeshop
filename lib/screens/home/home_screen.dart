import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter/services.dart';
import 'package:coffeeshop/screens/home/home_tab_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        // systemOverlayStyle: SystemUiOverlayStyle.light,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarColor: Color(0xff272727),
        ),
      ),
      body: const HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.center,
      children: [
        const Column(
          children: [
            HeaderSection(),
            SizedBox(height: 80),
            Expanded(child: HomeTabContainerPage()),
          ],
        ),
        Positioned(
          top: screenHeight * 0.3 -
              (screenWidth * 0.1) -
              40, // Adjust the top position as needed
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
            child: Image.asset(
              'assets/images/free.png',
            ),
          ),
        ),
        Positioned(
          top: screenHeight * 0.3 -
              (screenWidth * 0.1) -
              40, // Adjust the top position as needed
          left: MediaQuery.of(context).size.width / 4 - 40,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(5),
                  child: const Text(
                    'Promo',
                    style: TextStyle(
                      // backgroundColor: Colors.red,
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 13),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  height: 40,
                  color: Colors.black, // Set your desired background color here
                  child: Transform.translate(
                    offset: const Offset(
                        2, -18), // Adjust the vertical offset as needed
                    child: const Text(
                      'Buy one get',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),

                  height: 40, // Set the desired height for the background color
                  color: Colors.black, // Set your desired background color here
                  child: Transform.translate(
                    offset: const Offset(
                        2, -18), // Adjust the vertical offset as needed
                    child: const Text(
                      'one FREE',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      color: const Color(0xff272727),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          children: [
            LocationRow(),
            SizedBox(height: 20),
            SearchBar(),
          ],
        ),
      ),
    );
  }
}

class LocationRow extends StatelessWidget {
  const LocationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const LocationInfo(),
        const SizedBox(width: 12),
        const ChevronIcon(),
        const Spacer(),
        Image.asset('assets/images/profile.png'),
      ],
    );
  }
}

class LocationInfo extends StatelessWidget {
  const LocationInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Location',
          style: TextStyle(color: Colors.white54),
        ),
        Text(
          'Bilzen, Tanjungbalai',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}

class ChevronIcon extends StatelessWidget {
  const ChevronIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.rotationZ(-45 * math.pi / 90),
      alignment: Alignment.bottomCenter,
      child: const Icon(
        Icons.chevron_left,
        color: Colors.white,
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        height: 62,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xff313131),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            hintText: 'Search coffee',
            hintStyle: const TextStyle(
              color: Color(0xff989898),
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            suffixIcon: Container(
              decoration: BoxDecoration(
                color: const Color(0xffc67c4e),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(
                Icons.tune,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
