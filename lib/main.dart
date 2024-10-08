import 'package:flutter/material.dart';
import 'package:tomos_perifericos/_helpers/theme.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:tomos_perifericos/components/layout/bottom.dart';
import 'package:tomos_perifericos/components/layout/header.dart';
import 'package:tomos_perifericos/components/layout/sidebar.dart';
import 'package:tomos_perifericos/pages/biblioteca.dart';
import 'package:tomos_perifericos/pages/cadastrar.dart';
import 'package:tomos_perifericos/pages/perfil.dart';

void main()
{
    runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
    const MyApp({super.key});
    @override
    Widget build(BuildContext context)
    {
        return MaterialApp(
            title: 'Flutter Demo',
            theme: myTheme,
            home: const MyHomePage(title: 'Tomos periféricos'),
            debugShowCheckedModeBanner: false
        );
    }
}

class MyHomePage extends StatefulWidget
{
    const MyHomePage({super.key, required this.title});

    final String title;

    @override
    State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
    int _selectedIndex = 0;
    void onLogoTap()
    {
        setState(()
            {
                _selectedIndex = 0;
            }
        );
    }
    void onDestinationSelected(int index)
    {
        setState(()
            {
                _selectedIndex = index;
            }
        );
    }

    @override
    Widget build(BuildContext context)
    {
        return AdaptiveLayout(
            topNavigation: SlotLayout(
                config:
                {
                    Breakpoints.smallAndUp: SlotLayout.from(
                        key: const Key("mobile-topbar"),
                        builder: (context)
                        {
                            return Header(onLogoTap: onLogoTap);
                        }
                    ),
                    Breakpoints.largeAndUp: SlotLayoutConfig.empty()
                }
            ),
            bottomNavigation: SlotLayout(config:
                {
                    Breakpoints.smallAndUp: SlotLayout.from(
                        key: const Key("navigation-mobile"),
                        builder: (context)
                        {
                            return Bottom(selectedIndex: _selectedIndex, onDestinationSelected: onDestinationSelected);
                        }
                    ),
                    Breakpoints.largeAndUp: SlotLayoutConfig.empty()
                }
            ),
            primaryNavigation: SlotLayout(
                config:
                {
                    Breakpoints.largeAndUp: SlotLayout.from(
                        key: const Key("desktop-sidebar"),
                        builder: (context)
                        {
                            return Sidebar(
                                selectedIndex: _selectedIndex,
                                onDestinationSelected: onDestinationSelected
                            );
                        }
                    )
                }
            ),
            body: SlotLayout(config:
                {
                    Breakpoints.small: SlotLayout.from(
                        key: const Key("body-mobile"),
                        builder: (context)
                        {

                            return IndexedStack(
                                index: _selectedIndex,
                                children: const [Biblioteca(columns: 2), Cadastrar(), Perfil()]
                            );
                        }
                    ),
                    Breakpoints.mediumAndUp: SlotLayout.from(
                        key: const Key("body-mobile"),
                        builder: (context)
                        {

                            return IndexedStack(
                                index: _selectedIndex,
                                children: const [Biblioteca(columns: 3), Cadastrar(), Perfil()]
                            );
                        }
                    ),
                    Breakpoints.extraLarge: SlotLayout.from(
                        key: const Key("body-mobile"),
                        builder: (context)
                        {

                            return IndexedStack(
                                index: _selectedIndex,
                                children: const [Biblioteca(columns: 4), Cadastrar(), Perfil()]
                            );
                        }
                    )
                }
            )
            // secondaryNavigation: SlotLayout(config: {
            //   Breakpoints.largeAndUp: SlotLayout.from(key: Key('secondary-body'),
            //     builder: (context) {
            //     return NavigationDrawer(
            //       backgroundColor: Colors.white,
            //         children: [
            //           Container(
            //             width: 300,
            //             height: 100,
            //             color: Colors.pink,
            //           )
            //     ]);
            //     }
            //   )
            // }),
        );
    }
}
