import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class CustomMinicontainer extends StatefulWidget {
  final String title;
  final String subtitle;
  final String iconPath;
  final int number;
  final Color? subtitleColor;
  final Color? borderColor;

  const CustomMinicontainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconPath,
    required this.number,
    this.subtitleColor,
    this.borderColor,
  });

  @override
  State<CustomMinicontainer> createState() => _CustomMinicontainerState();
}

class _CustomMinicontainerState extends State<CustomMinicontainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Container tapped!');
      },
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Color(0x80000000),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          width: 186,
          height: 161,
          decoration: BoxDecoration(
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: widget.borderColor ?? Colors.transparent,
              width: 1,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10, top: 8, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  children: [
                    SvgPicture.asset(
                      widget.iconPath,
                      width: 25,
                      height: 25,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                Text(
                  NumberFormat('#,###').format(widget.number),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),

                Text(
                  widget.subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: widget.subtitleColor ?? Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
