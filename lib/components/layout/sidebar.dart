import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tomos_perifericos/_helpers/menu.dart'; // Assuming this is where MenuList is defined

class Sidebar extends StatefulWidget {
  const Sidebar({super.key, required this.selectedIndex, required this.onDestinationSelected});

  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  State<Sidebar> createState() => SidebarState();
}

class SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {

    return NavigationDrawer(
              tilePadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              onDestinationSelected: widget.onDestinationSelected,
              selectedIndex: widget.selectedIndex,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Center(
                    child: SvgPicture.asset('assets/logo.svg'),
                  ),
                ),
                ...menu.map(
                      (MenuList m) {
                    return NavigationDrawerDestination(
                      label: Text(m.label),
                      icon: m.icon,
                      selectedIcon: m.selectedIcon,
                    );
                  },
                ),
              ],
            );
  }
}
