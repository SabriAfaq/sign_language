import 'package:flutter/material.dart';
import 'package:sign_language/component/firstUI_Page.dart';
import 'package:sign_language/models/card_model.dart';
import 'package:sign_language/screens/alphabet_page.dart';
import 'package:sign_language/utilities/constants.dart';

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
    page: AlphabetPage(),
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
    page: AlphabetPage(),
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

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: Drawer(),
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          backgroundColor: kappBarColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
          )),
          title: Text(
            "$appTitle",
            style: TextStyle(color: kappBarTitle, fontFamily: "Iranyekan"),
          ),
        ),
        body: SafeArea(
          child: Container(
            color: kappBarColor,
            child: Container(
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                  )),
              child: GridView.count(
                physics: BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 25,
                children: categories
                    .map(
                      (c) => FirstUIPage(
                        card: c,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          )),
          onPressed: () {},
          label: Text(
            "آزمون",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: kappBarTitle, fontSize: 18),
          ),
          backgroundColor: kappBarColor,
          icon: Icon(
            Icons.quiz_outlined,
            color: kappBarTitle,
          ),
        ),
      ),
    );
  }
}
