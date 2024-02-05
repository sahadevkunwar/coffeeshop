import 'package:flutter/material.dart';

class OrderReceived extends StatelessWidget {
  const OrderReceived({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/maps.png",
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 50,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '10 minutes left',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Delivery to ',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade400,
                      ),
                      children: const [
                        TextSpan(
                          text: 'JL.Kpg Sutoyo ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const DashArea(),
                  const SizedBox(height: 15),
                  const DeliverOrder(),
                  const SizedBox(height: 15),
                  const OrderAddress(),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, top: 10),
              child: IconButton.outlined(
                onPressed: null,
                icon: Icon(Icons.arrow_back_ios_new),
              ),
            ),
            const Positioned(
              right: 0,
              child: Padding(
                padding: EdgeInsets.only(right: 10.0, top: 10),
                child: IconButton.outlined(
                  onPressed: null,
                  icon: Icon(Icons.my_location),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OrderAddress extends StatelessWidget {
  const OrderAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/profile.png',
              height: 80,
              width: 70,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 10),
          const Column(
            children: [
              Text.rich(
                TextSpan(
                    text: 'Johan Hawn',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                    children: [
                      TextSpan(
                        text: '\nPersonal Courier',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color(0xffb4b4b4),
                        ),
                      ),
                    ]),
              )
            ],
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffdfdfdf)),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(
              Icons.phone_in_talk_rounded,
              size: 40,
              color: Color(0xff808080),
            ),
          ),
        ],
      ),
    );
  }
}

class DeliverOrder extends StatelessWidget {
  const DeliverOrder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffe9e9e9)),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffe9e9e9)),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: const Icon(
              Icons.directions_bike,
              size: 50,
              color: Color(0xffc77e50),
            ),
          ),
          const SizedBox(width: 15),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                  text: 'Delivered your order',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text:
                          '\nWe deliver your goods to you in \nthe shortest possible time.',
                      style: TextStyle(
                        color: Color(0xffc1c1c1),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class DashArea extends StatelessWidget {
  const DashArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: 5,
            decoration: BoxDecoration(
              color: const Color(0xff30c07e),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: 5,
            decoration: BoxDecoration(
              color: const Color(0xff30c07e),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: 5,
            decoration: BoxDecoration(
              color: const Color(0xff30c07e),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: 5,
            decoration: BoxDecoration(
              color: const Color(0xffdfdfdf),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ],
      ),
    );
  }
}
