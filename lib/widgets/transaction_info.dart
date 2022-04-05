import 'package:flutter/material.dart';

class TransactionInfo extends StatelessWidget {
  const TransactionInfo({
    Key? key,
    required this.action,
    required this.amount,
    required this.icons,
    required this.title,
  }) : super(key: key);
  final String title, icons, amount, action;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 45,
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xfff9f9fa),
            ),
            child: Image.asset(
              icons,
              color: Colors.blue,
            ),
          ),
          const SizedBox(width: 15.33),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                action,
                style: const TextStyle(
                  color: Color(0xffa8a6ad),
                  fontSize: 12,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xff0c2073),
                  fontSize: 16,
                  fontFamily: "Hind",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Expanded(
            child: Text(
              amount,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xfffb4e4e),
                fontSize: 14,
                fontFamily: "Hind",
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
