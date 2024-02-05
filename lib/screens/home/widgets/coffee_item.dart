import 'package:flutter/material.dart';

class CoffeemenuItemWidget extends StatelessWidget {
  const CoffeemenuItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white, // Set the background color to white
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/cappucino.png',
                  // height: 80,
                  width: 141,
                  fit: BoxFit.contain,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Cappucino',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff2F2D2C),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    'with Chocolate',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9B9B9B),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      const Text(
                        '\$ 4.53',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff2F4B4E),
                        ),
                      ),
                      const Spacer(),
                      Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            color: Color(0xffc67c4e),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 5.0, top: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color(0xfffbbe21),
                  ),
                  SizedBox(width: 3),
                  Text(
                    '4.8',
                    style: TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
