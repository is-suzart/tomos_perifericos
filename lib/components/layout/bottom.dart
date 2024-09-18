import 'package:flutter/material.dart';
import 'package:tomos_perifericos/_helpers/menu.dart';

class Bottom extends StatefulWidget
{
    const Bottom({super.key,required this.selectedIndex, required this.onDestinationSelected});

    final int selectedIndex;
    final ValueChanged<int> onDestinationSelected;

    @override
    State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom>
{
    @override
    Widget build(BuildContext context)
    {
        return NavigationBar(
            onDestinationSelected: widget.onDestinationSelected,
            selectedIndex: widget.selectedIndex,
            backgroundColor: Colors.white,
            labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            destinations: menu.map(
                (MenuList m)
                {
                    return NavigationDestination(
                        label: m.label,
                        icon: m.icon,
                        selectedIcon: m.selectedIcon,
                        tooltip: m.label
                    );
                }
            ).toList()
        );
    }

}
