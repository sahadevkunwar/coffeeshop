import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeliverPage extends StatelessWidget {
  const DeliverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Delivery Address',
                style: TextStyle(
                  color: Color(0xff2F2D2C),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'JI. Kpg Sutoyo',
                style: TextStyle(
                  color: Color(0xff303336),
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
                style: TextStyle(
                  color: Color(0xff808080),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  OutlinedButton.icon(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        const BorderSide(color: Color(0xffdedede)),
                      ), // Set the border color here
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit_square,
                      color: Colors.black54,
                    ),
                    label: const Text(
                      'Edit Address',
                      style: TextStyle(
                        color: Color(0xff303336),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  OutlinedButton.icon(
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        const BorderSide(color: Color(0xffdedede)),
                      ), // Set the border color here
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.text_snippet_outlined,
                      color: Colors.black54,
                    ),
                    label: const Text(
                      'Add Note',
                      style: TextStyle(
                        color: Color(0xff303336),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
              const SizedBox(height: 15),
              Divider(
                // height: 1,
                color: Colors.grey.shade200,
                thickness: 2,
              ),
              const SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/cappucino.png',
                      height: 54,
                      width: 54,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 3),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Cappucino',
                        style: TextStyle(
                          color: Color(0xff2F2D2C),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'with Chocolate',
                        style: TextStyle(
                          color: Color(0xff9B9B9B),
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const CircleBorder(),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    onPressed: () {},
                    child: Icon(
                      Icons.remove,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  const Text('1'),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: const CircleBorder(),
                      side: BorderSide(color: Colors.grey.shade300),
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Divider(
                // height: 3,
                color: Colors.grey.shade200,
                thickness: 6,
              ),
              const SizedBox(height: 15),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: const Color(0xffeaeaea)),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/discount.svg',
                      height: 30,
                      width: 30,
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      '1 Discount is applied',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2F2D2C),
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.chevron_right, size: 35)
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Payment Summary',
                style: TextStyle(
                  color: Color(0xff2F2D2C),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                      color: Color(0xff2F2D2C),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$ 4.53',
                    style: TextStyle(
                      color: Color(0xff2F2D2C),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text(
                    'Delivery Fee',
                    style: TextStyle(
                      color: Color(0xff2F2D2C),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  SizedBox(width: 10),
                  Text(
                    '\$ 2.0',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    '\$ 1.0',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Divider(height: 2, thickness: 1, color: Colors.grey.shade400),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Text(
                    'Total Payment',
                    style: TextStyle(
                      color: Color(0xff2F2D2C),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$ 5.53',
                    style: TextStyle(
                      color: Color(0xff2F2D2C),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/moneys.svg',
                    height: 30,
                    width: 30,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      // padding: const EdgeInsets.only(right: 10),
                      width: 150,
                      height: 35,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xfff6f6f6),
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 65,
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              color: Color(0xffc67c4e),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(19)),
                            ),
                            child: const Text(
                              'Cash',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          const Expanded(
                            child: Text(
                              '\$ 5.53',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Icon(Icons.pending, size: 40, color: Color(0xff808080)),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {},
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25),
          height: 45,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: Color(0xffc67c4e),
          ),
          child: const Text(
            'Order',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
