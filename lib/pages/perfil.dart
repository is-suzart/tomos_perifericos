import 'package:flutter/material.dart';

class Perfil extends StatelessWidget
{
    const Perfil({super.key});

    @override
    Widget build(BuildContext context)
    {
        return const Material(
            child: Center(
                child: Text('Oi, sou o perfil')
            )
        );
    }
}
