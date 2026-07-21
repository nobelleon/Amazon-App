import 'package:amazon/data/data.dart';
import 'package:flutter/material.dart';

AppBar appbar({
  bool isIcon = false,
  Function()? onTap,
  BuildContext,
}) {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: GestureDetector(
      onTap: () {
        Navigator.pop(BuildContext);
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: isIcon ? Images.arrowLeft : Images.menu,
      ),
    ),
    centerTitle: true,
    title: Images.amazonlogo,
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Images.shop,
      ),
    ],
  );
}
