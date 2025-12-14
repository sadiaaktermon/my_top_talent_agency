import 'package:flutter/material.dart';
import 'bottom_tab_item.dart';

class CustomBottomNav extends StatelessWidget {
  final List<BottomTabItem> tabs;
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNav({
    super.key,
    required this.tabs,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: const Color(0xFF0F172A),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(tabs.length, (i) {
          final tab = tabs[i];

          if (tab.isCenter) {
            return _centerButton(i);
          }

          return _navItem(i, tab);
        }),
      ),
    );
  }

  Widget _navItem(int index, BottomTabItem tab) {
    final isSelected = index == currentIndex;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            tab.icon,
            color: isSelected ? Color(0xff386BF6) : Colors.grey,
          ),
          const SizedBox(height: 4),
          Text(
            tab.label,
            style: TextStyle(
              fontSize: 11,
              color: isSelected ? Colors.white : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _centerButton(int index) {
    bool isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Transform.translate(
        offset: const Offset(0, -13),
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: const Color(0xFF6D5DF6),
            border: isSelected ? Border.all(
              color: const Color(0xffE8EEFF),
              width: 4,
            ) : null,
          ),
          child: const Icon(
            Icons.home_outlined,
            color: Colors.white,
            size: 26,
          ),
        ),
      ),
    );
  }
}
