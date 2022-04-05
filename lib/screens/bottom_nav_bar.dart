import 'package:flutter/material.dart';
import 'package:infinite_pay_ui/screens/history/history_screen.dart';
import 'package:infinite_pay_ui/screens/home/home_overview.dart';
import 'package:infinite_pay_ui/utils/botton.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

Widget buildCurrentWidget(int index) {
  switch (index) {
    case 0:
      return const HomeOverview();
    case 1:
      return const HistoryScreen();

    case 2:
      return const _TemporaryHomeScreen(
        title: 'My Card',
      );
    case 3:
      return const _TemporaryHomeScreen(
        title: 'Settings',
      );

    default:
      return const _TemporaryHomeScreen(
        title: 'Home Screen',
      );
  }
}

int currentIndex = 0;

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: buildCurrentWidget(currentIndex),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        // padding: const EdgeInsets.all(10),

        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 13)),
        child: SizedBox(
          height: 50,
          child: FloatingActionButton(
            backgroundColor: const Color(0xff0c2073),
            onPressed: () {},
            child: const Icon(Icons.camera_alt_outlined),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 1,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            BottonBarBottom(
              index: 0,
              onPressed: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              height: 50,
              icons: 'assets/icons/overview.jpg',
              text: 'Overview',
            ),
            BottonBarBottom(
              index: 1,
              onPressed: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              height: 50,
              icons: 'assets/icons/history.jpg',
              text: 'History',
            ),
            const SizedBox(width: 65),
            BottonBarBottom(
              index: 2,
              onPressed: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              height: 50,
              icons: 'assets/icons/my_card.jpg',
              text: 'My Card',
            ),
            BottonBarBottom(
              index: 3,
              onPressed: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
              height: 50,
              icons: 'assets/icons/settings.jpg',
              text: 'Settings',
            ),
          ],
        ),

        //  Stack(
        //   children: [
        //     Positioned(
        //       top: 7,
        //       left: 20,
        //       child: TextButton(
        //         child: Column(
        //           children: [
        //             Image.asset('assets/icons/overview.jpg',
        //                 height: 15, width: 15),
        //             const Text(
        //               'Overview',
        //               style: TextStyle(
        //                 color: Color(0xff0c2073),
        //                 fontSize: 12,
        //                 fontFamily: "Hind",
        //                 fontWeight: FontWeight.w500,
        //               ),
        //             ),
        //           ],
        //         ),
        //         onPressed: () {
        //           setState(() {
        //             currentIndex = 0;
        //           });
        //         },
        //       ),
        //     ),
        //     Positioned(
        //       top: 7,
        //       left: 113,
        //       child: TextButton(
        //         child: Column(
        //           children: [
        //             Image.asset('assets/icons/history.jpg',
        //                 height: 15, width: 15),
        //             const Text(
        //               'History',
        //               style: TextStyle(
        //                 color: Color(0xff0c2073),
        //                 fontSize: 12,
        //                 fontFamily: "Hind",
        //                 fontWeight: FontWeight.w500,
        //               ),
        //             ),
        //           ],
        //         ),
        //         onPressed: () {
        //           setState(() {
        //             currentIndex = 1;
        //           });
        //         },
        //       ),
        //     ),
        //     Positioned(
        //       top: 7,
        //       right: 113,
        //       child: TextButton(
        //         child: Column(
        //           children: [
        //             Image.asset('assets/icons/my_card.jpg',
        //                 height: 15, width: 15),
        //             const Text(
        //               'My Card',
        //               style: TextStyle(
        //                 color: Color(0xff0c2073),
        //                 fontSize: 12,
        //                 fontFamily: "Hind",
        //                 fontWeight: FontWeight.w500,
        //               ),
        //             ),
        //           ],
        //         ),
        //         onPressed: () {
        //           setState(() {
        //             currentIndex = 2;
        //           });
        //         },
        //       ),
        //     ),
        //     Positioned(
        //       top: 7,
        //       right: 20,
        //       child: TextButton(
        //         child: Column(
        //           children: [
        //             Image.asset('assets/icons/settings.jpg',
        //                 height: 15, width: 15),
        //             const Text(
        //               'Settings',
        //               style: TextStyle(
        //                 color: Color(0xff0c2073),
        //                 fontSize: 12,
        //                 fontFamily: "Hind",
        //                 fontWeight: FontWeight.w500,
        //               ),
        //             ),
        //           ],
        //         ),
        //         onPressed: () {
        //           setState(() {
        //             currentIndex = 3;
        //           });
        //         },
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

class _TemporaryHomeScreen extends StatelessWidget {
  const _TemporaryHomeScreen({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(title)),
    );
  }
}
