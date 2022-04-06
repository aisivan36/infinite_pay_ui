import 'package:flutter/material.dart';
import 'package:infinite_pay_ui/widgets/card_overlay.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xfff7f9ff),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 1,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 150,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                        color: Color(0xff0c2073),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'My Cards',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Hind Siliguri",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 30,
                      right: 20,
                      child: Icon(
                        Icons.add_circle_outline_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),

                    /// Lists of cards

                    Positioned.fill(
                      top: 96,
                      left: 20,
                      right: 20,
                      child: MaterialApp(
                        home: Scaffold(
                          backgroundColor: Colors.transparent,
                          extendBody: true,
                          body: ListView.separated(
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 20,
                            ),
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return const CardOverlay();
                            },
                            padding: const EdgeInsets.only(bottom: 90),
                            // children: const [
                            //   CardOverlay(),
                            //   CardOverlay(),
                            //   CardOverlay(),
                            //   CardOverlay(),
                            //   CardOverlay(),
                            // ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
