import 'package:flutter/material.dart';
import 'package:sign_language/models/card_model.dart';
import 'package:sign_language/screens/alphabet_page.dart';
import 'package:sign_language/screens/family_page.dart';
import 'package:sign_language/screens/religius_page.dart';

List<CardModel> categories = [
  CardModel(
    title: "الفبا",
    image: "assets/images/cardImage/alphabets.jpg",
    page: AlphabetPage(),
    color: Color(0xFFFFACD6),
  ),
  CardModel(
    title: "دین و مذهب",
    image: "assets/images/cardImage/din.jpg",
    page: ReligiousPage(),
    color: Color(0xFFA3CDA5),
  ),
  CardModel(
    title: "روابط اجتماعی",
    image: "assets/images/cardImage/social.jpg",
    page: AlphabetPage(),
    color: Color(0xFFAA96DA),
  ),
  CardModel(
    title: "فامیل و اقارب",
    image: "assets/images/cardImage/family.jpg",
    page: FamilyPage(),
    color: Color(0xFF849D9A),
  ),
  CardModel(
    title: "لوازم خانه",
    image: "assets/images/cardImage/10.jpg",
    page: AlphabetPage(),
    color: Color(0xFFC7AC8E),
  ),
  CardModel(
    title: "خوراک",
    image: "assets/images/cardImage/10.jpg",
    page: AlphabetPage(),
    color: Color(0xFF5ED3B6),
  ),
  CardModel(
    title: "پوشاک",
    image: "assets/images/cardImage/10.jpg",
    page: AlphabetPage(),
    color: Color(0xFFA8C2FD),
  ),
  CardModel(
    title: "مکان ها",
    image: "assets/images/cardImage/10.jpg",
    page: AlphabetPage(),
    color: Colors.grey,
  ),
];
