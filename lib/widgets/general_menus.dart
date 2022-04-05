import 'package:flutter/material.dart';

class GeneralMenus extends StatelessWidget {
  const GeneralMenus({
    Key? key,
    required this.assetsIcon,
    required this.title,
    required this.firsHeight,
    required this.firstWidth,
    required this.secondHeight,
    required this.secondWidth,
  }) : super(key: key);

  final String assetsIcon;
  final String title;

  final double firsHeight, firstWidth, secondHeight, secondWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      // height: 90,
      // width: 90,
      height: firsHeight,
      width: firstWidth,
      child: Column(
        children: [
          const SizedBox(
            height: 13,
          ),
          Container(
            // width: 40,
            // height: 40,
            width: secondWidth,
            height: secondHeight,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff0c2073),
            ),
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(8.0)),
              child: Image.asset(assetsIcon),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: const TextStyle(
              color: Color(0xff0c2073),
              fontSize: 14,
              fontFamily: "Hind",
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
