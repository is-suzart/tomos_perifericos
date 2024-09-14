import 'package:flutter/material.dart';

class MenuList {
  const MenuList(this.label, this.icon, this.selectedIcon);

  final String label;
  final Widget icon;
  final Widget selectedIcon;
}

const List<MenuList> menu = <MenuList>[
  MenuList(
      'Biblioteca', Icon(Icons.my_library_books_outlined,weight: 200,), Icon(Icons.my_library_books_rounded,weight: 200,)),
  MenuList(
      'Cadastrar Livro', Icon(Icons.my_library_add_outlined), Icon(Icons.my_library_add_rounded)),
  MenuList(
      'Perfil', Icon(Icons.settings_outlined), Icon(Icons.settings)),
];