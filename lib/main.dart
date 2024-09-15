import 'package:flutter/material.dart';
import 'package:tomos_perifericos/_helpers/theme.dart';
import 'package:tomos_perifericos/_helpers/menu.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:tomos_perifericos/pages/biblioteca.dart';
import 'package:tomos_perifericos/pages/cadastrar.dart';
import 'package:tomos_perifericos/pages/perfil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme,
      home: const MyHomePage(title: 'Tomos periféricos'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      topNavigation: SlotLayout(config: {
        Breakpoints.smallAndUp: SlotLayout.from(
            key: const Key("bottom-topbar"),
            builder: (context) {
              return Container(
                  color: Colors.white,
                  height: 56,
                  child: Center(
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => {
                          setState(() {
                            _selectedIndex = 0;
                          })
                        },
                        child: SvgPicture.asset("assets/logo.svg"),
                      ),
                    ),
                  ));
            }),
        Breakpoints.largeAndUp: SlotLayoutConfig.empty()
      }),
      bottomNavigation: SlotLayout(config: {
        Breakpoints.smallAndUp: SlotLayout.from(
            key: const Key("navigation-mobile"),
            builder: (context) {
              return NavigationBar(
                onDestinationSelected: (int index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                selectedIndex: _selectedIndex,
                backgroundColor: Colors.white,
                labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
                destinations: menu.map(
                  (MenuList m) {
                    return NavigationDestination(
                      label: m.label,
                      icon: m.icon,
                      selectedIcon: m.selectedIcon,
                      tooltip: m.label,
                    );
                  },
                ).toList(),
              );
            }),
        Breakpoints.largeAndUp: SlotLayoutConfig.empty()
      }),
      primaryNavigation: SlotLayout(config: {
        Breakpoints.largeAndUp: SlotLayout.from(key: Key('navbar-desktop'),
          builder: (context) {
          return NavigationDrawer(
            tilePadding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            selectedIndex: _selectedIndex,
            backgroundColor: Colors.white,
            //labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
            children:
            menu.map(
                  (MenuList m) {
                return NavigationDrawerDestination(
                  label: Text( m.label),
                  icon: m.icon,
                  selectedIcon: m.selectedIcon,
                );
              },
            ).toList(),
          );
          }
        )
      }) ,
      body: SlotLayout(config: {
        Breakpoints.smallAndUp: SlotLayout.from(
            key: const Key("appbar-mobile"),
            builder: (context) {
              return IndexedStack(
                index: _selectedIndex,
                children: const [Biblioteca(), Cadastrar(), Perfil()],
              );
            }),
        Breakpoints.medium: SlotLayout.from(
            key: const Key('body-medium'),
            builder: (context) {
              return IndexedStack(
                index: _selectedIndex,
                children: const [Biblioteca(), Cadastrar(), Perfil()],
              );
            })
      }),
    );
  }
}
