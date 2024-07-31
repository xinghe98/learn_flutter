import 'package:flutter/material.dart';
import 'package:myapp/commponts/favriote_icon.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 1.2),
                    child: const Text(
                      'Oeschinen Lake Campground',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text('Kandersteg, Switzerland',
                      style: TextStyle(color: Colors.grey[500])),
                ],
              ),
            ),
            const FavrioteIcon()
          ],
        ));
  }
}
