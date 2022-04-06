import 'package:flutter/material.dart';
import 'package:infinite_pay_ui/widgets/card_overlay.dart';
import 'package:infinite_pay_ui/widgets/general_menus.dart';
import 'package:infinite_pay_ui/widgets/transaction_info.dart';

class HomeOverview extends StatelessWidget {
  const HomeOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: const Color(0xfff7f9ff),
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// AppBar
              SizedBox(
                height: 360,
                // width: double.infinity,
                // width: 399,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 290,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: Color(0xff0c2073),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 20,
                            top: 25,
                            child: Container(
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(37.5),
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 1, color: Colors.white),
                                // color: const Color(0xFFE3E6EF),
                              ),
                              child: SizedBox(
                                height: 50,
                                width: 50,
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      'assets/images/dakota.jpg',
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 25,
                            right: 55,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    'My Card',
                                    style: TextStyle(
                                      color: Color(0xffa5b5f4),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Bank Shayna',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Hind",
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Positioned(
                            top: 45,
                            right: 20,
                            child: Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xffa5b5f4),
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Positioned(
                      top: 125,
                      left: 20,
                      right: 20,

                      /// Card Overlay
                      child: CardOverlay(),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              /// Menus
              ///
              LayoutBuilder(
                builder: (context, constraints) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'General Menus',
                          style: TextStyle(
                            color: Color(0xff0c2073),
                            fontSize: 16,
                            fontFamily: "Hind",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GeneralMenus(
                              firsHeight: 90,
                              firstWidth: constraints.maxWidth * 0.2,
                              secondHeight: 40,
                              secondWidth: 40,
                              assetsIcon: 'assets/icons/assets1.png',
                              title: 'Transfer',
                            ),
                            GeneralMenus(
                              firsHeight: 90,
                              firstWidth: constraints.maxWidth * 0.2,
                              secondHeight: 40,
                              secondWidth: 40,
                              assetsIcon: 'assets/icons/assets2.png',
                              title: 'Receive',
                            ),
                            GeneralMenus(
                              firsHeight: 90,
                              firstWidth: constraints.maxWidth * 0.2,
                              secondHeight: 40,
                              secondWidth: 40,
                              assetsIcon: 'assets/icons/assets3.png',
                              title: 'Deposit',
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GeneralMenus(
                              firsHeight: 90,
                              firstWidth: constraints.maxWidth * 0.2,
                              secondHeight: 40,
                              secondWidth: 40,
                              assetsIcon: 'assets/icons/assets4.png',
                              title: 'WithDraw',
                            ),
                            GeneralMenus(
                              firsHeight: 90,
                              firstWidth: constraints.maxWidth * 0.2,
                              secondHeight: 40,
                              secondWidth: 40,
                              assetsIcon: 'assets/icons/assets5.png',
                              title: 'Rewards',
                            ),
                            GeneralMenus(
                              firsHeight: 90,
                              firstWidth: constraints.maxWidth * 0.2,
                              secondHeight: 40,
                              secondWidth: 40,
                              assetsIcon: 'assets/icons/assets6.png',
                              title: 'Pay Bills',
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),

              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20.0, top: 35),
                child: Container(
                  height: 420,
                  // width: 327,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Latest Transactions',
                            style: TextStyle(
                              color: Color(0xff0c2073),
                              fontSize: 16,
                              fontFamily: "Hind",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 17.33),
                          Text(
                            "Today, 27 Mar",
                            style: TextStyle(
                              color: Color(0xff0c2073),
                              fontSize: 14,
                              fontFamily: "Hind",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 17.33),
                          TransactionInfo(
                            action: 'Send to',
                            title: 'Muamarrita',
                            amount: "-\$2,500.10",
                            icons: 'assets/icons/assets1.png',
                          ),
                          SizedBox(height: 17.33),
                          TransactionInfo(
                            action: 'Received from',
                            title: 'Barllery',
                            amount: "+\$500.00",
                            icons: 'assets/icons/assets2.png',
                          ),
                          SizedBox(height: 17.33),
                          TransactionInfo(
                            action: 'Rewards',
                            title: 'Daily Login',
                            amount: "-\$25.00",
                            icons: 'assets/icons/assets1.png',
                          ),
                          SizedBox(height: 17.33),
                          Text(
                            "Today, 27 Mar",
                            style: TextStyle(
                              color: Color(0xff0c2073),
                              fontSize: 14,
                              fontFamily: "Hind",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 17.33),
                          TransactionInfo(
                            action: 'Bills to',
                            title: 'PT Shayna Pulsa',
                            amount: "-\$450.00",
                            icons: 'assets/icons/assets6.png',
                          ),
                          TransactionInfo(
                            action: 'Bills to',
                            title: 'PT Devmus Tech',
                            amount: "+\$150.00",
                            icons: 'assets/icons/assets6.png',
                          ),
                          TransactionInfo(
                            action: 'Bills to',
                            title: 'PT Scrum',
                            amount: "+\$4150.00",
                            icons: 'assets/icons/assets6.png',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
