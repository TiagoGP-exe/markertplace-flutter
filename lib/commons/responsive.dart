import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Responsive extends StatelessWidget {
  Responsive(
      {super.key,
      required this.desktop,
      required this.tablet,
      required this.mobile});

  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 768 &&
      MediaQuery.of(context).size.width < 1024;

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth >= 1024) {
        return desktop;
      } else if (constrains.maxHeight >= 768) {
        return tablet;
      } else {
        return mobile;
      }
    });
  }
}
