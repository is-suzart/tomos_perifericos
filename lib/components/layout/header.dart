import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatefulWidget {
  const Header({super.key, required this.onLogoTap});

  final VoidCallback onLogoTap;
  
  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
              color: Colors.white,
              height: 56,
              child: Center(
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: widget.onLogoTap,
                    child: SvgPicture.asset("assets/logo.svg"),
                  ),
                ),
              ),
            );
  }
}

