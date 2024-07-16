import 'package:flutter/material.dart';

class FavrioteIcon extends StatefulWidget {
  const FavrioteIcon({super.key});

  @override
  State<FavrioteIcon> createState() => _FavrioteWidget();
}

class _FavrioteWidget extends State<FavrioteIcon> {
  bool _isFavriote = false;
  int _collection = 40;

  void _changeState() {
    setState(() {
      if (_isFavriote) {
        _isFavriote = false;
        _collection -= 1;
      } else {
        _isFavriote = true;
        _collection += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(_isFavriote ? Icons.star : Icons.star_border),
          onPressed: _changeState,
        ),
        Text("$_collection")
      ],
    );
  }
}
