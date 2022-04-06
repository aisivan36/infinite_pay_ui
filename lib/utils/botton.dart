import 'package:flutter/material.dart';

class BottonBarBottom extends StatelessWidget {
  const BottonBarBottom({
    Key? key,
    this.height = 0.0,
    required this.onPressed,
    this.index = 0,
    this.icons = '',
    this.text = '',
    required this.isColorSelected,
  }) : super(key: key);

  /// The height of the bottom bar.
  final double height;

  /// index of the selected item
  final void Function(int) onPressed;

  /// Initialize the index of the selected item
  final int index;

  /// Initialize the icons of the bottom bar
  final String icons;

  /// Initialize the title of the bottom bar
  final String text;

  final bool isColorSelected;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: height,
        child: InkWell(
          onTap: () => onPressed(index),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(icons, height: 15, width: 15
                  // ,color: isColorSelected ? Colors.white : Colors.black
                  ),
              // Icon(item.iconData, color: color, size: widget.iconSize),
              Text(
                text,
                // style: TextStyle(color: color),
                style: TextStyle(
                  color:
                      isColorSelected ? const Color(0xff0c2073) : Colors.black,
                  fontSize: 12,
                  fontFamily: "Hind",
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
