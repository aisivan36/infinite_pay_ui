import 'package:flutter/material.dart';

class CardOverlay extends StatelessWidget {
  const CardOverlay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 234,
      width: 327,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          // color: Colors.white,
          image: const DecorationImage(
            image: AssetImage('assets/images/background_card.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            const Positioned(
              top: 40,
              left: 30,
              child: Text(
                '\$ 25,880,500',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  // fontFamily: "Hind",
                  fontSize: 33.0,
                ),
              ),
            ),
            Positioned(
              top: 107.0,
              left: 30,
              child: Row(
                children: const [
                  Text(
                    '2208',
                    style: TextStyle(
                      color: Color(0xffc3cfff),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 15.33,
                  ),
                  Text(
                    '••••',
                    style: TextStyle(
                      color: Color(0xffc3cfff),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 15.33,
                  ),
                  Text(
                    '••••',
                    style: TextStyle(
                      color: Color(0xffc3cfff),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 15.33,
                  ),
                  Text(
                    '••••',
                    style: TextStyle(
                      color: Color(0xffc3cfff),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 15,
              left: 30,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Platinum',
                    style: TextStyle(
                      color: Color(0xffa5b5f4),
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Andy James',
                    style: TextStyle(color: Colors.white, fontFamily: 'Hind'),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 25,
              right: 29,
              child: Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Image.asset('assets/icons/button.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
