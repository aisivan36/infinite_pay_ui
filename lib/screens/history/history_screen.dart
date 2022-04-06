import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinite_pay_ui/widgets/card_overlay.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: const Color(0xfff7f9ff),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
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
                        padding: const EdgeInsets.only(
                          top: 25.0,
                          left: 20,
                          right: 20,
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Text(
                                title,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: "Hind",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
                              child: CupertinoButton(
                                // color: Colors.red,
                                padding: const EdgeInsets.all(0),
                                pressedOpacity: .4,
                                onPressed: () {},
                                child: const Icon(
                                  Icons.add_circle_outline_rounded,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Positioned(
                    //   top: 30,
                    //   right: 20,
                    //   child: CupertinoButton(
                    //     // color: Colors.red,
                    //     padding: const EdgeInsets.all(0),
                    //     pressedOpacity: .4,
                    //     onPressed: () {},
                    //     child: const Icon(
                    //       Icons.add_circle_outline_rounded,
                    //       color: Colors.white,
                    //       size: 30,
                    //     ),
                    //   ),
                    // ),

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
                            itemCount: 5,
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
