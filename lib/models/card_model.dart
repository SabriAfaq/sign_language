import 'package:flutter/material.dart';

class CardModel {
  String title;
  String image;
  Widget page;
  Color? color;

  CardModel(
      {required this.title,
      required this.image,
      required this.page,
      this.color});
}
