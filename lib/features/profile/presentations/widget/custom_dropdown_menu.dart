import 'package:flutter/material.dart';

class CustomDropdownMenu {
  // static show method
  static Future<T?> show<T>({
    required BuildContext context,
    required GlobalKey keyWidget,
    required List<T> items,
    required List<Widget> itemWidgets,
  }) async {
    final RenderBox renderBox = keyWidget.currentContext!.findRenderObject() as RenderBox;
    final Offset offset = renderBox.localToGlobal(Offset.zero);
    final Size size = renderBox.size;

    return await showMenu<T>(
      context: context,
      position: RelativeRect.fromLTRB(
        offset.dx,
        offset.dy + size.height,
        offset.dx + size.width,
        offset.dy,
      ),
      items: List.generate(items.length, (index) {
        return PopupMenuItem<T>(
          value: items[index],
          child: itemWidgets[index],
        );
      }),
    );
  }
}
