import 'package:flutter/material.dart';

class ButtonColum extends StatelessWidget {
  const ButtonColum({super.key});

  @override
  Widget build(BuildContext context) {
    Column buildButtomColum(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                label,
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ))
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtomColum(Icons.call, "CALL"),
        buildButtomColum(Icons.near_me, "ROUTE"),
        buildButtomColum(Icons.share, 'SHARE')
      ],
    );
  }
}
