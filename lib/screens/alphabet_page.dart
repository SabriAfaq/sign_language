import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class AlphabetPage extends StatefulWidget {
  const AlphabetPage({super.key});

  @override
  State<AlphabetPage> createState() => _AlphabetPageState();
}

class _AlphabetPageState extends State<AlphabetPage> {
  List<String> signImage = [
    "assets/images/alphabet/آ.png",
    "assets/images/alphabet/ا.jpg",
    "assets/images/alphabet/ب.png",
    "assets/images/alphabet/ت.png",
    "assets/images/alphabet/ث.png",
    "assets/images/alphabet/پ.png",
    "assets/images/alphabet/ج.png",
    "assets/images/alphabet/چ.png",
    "assets/images/alphabet/ح.png",
    "assets/images/alphabet/خ.png",
    "assets/images/alphabet/د.png",
    "assets/images/alphabet/ذ.png",
    "assets/images/alphabet/ر.png",
    "assets/images/alphabet/ز.png",
    "assets/images/alphabet/ژ.png",
    "assets/images/alphabet/س.png",
    "assets/images/alphabet/ش.png",
    "assets/images/alphabet/ص.png",
    "assets/images/alphabet/ض.png",
    "assets/images/alphabet/ط.png",
    "assets/images/alphabet/ظ.png",
    "assets/images/alphabet/ع.png",
    "assets/images/alphabet/غ.png",
    "assets/images/alphabet/ف.png",
    "assets/images/alphabet/ق.png",
    "assets/images/alphabet/ک.png",
    "assets/images/alphabet/گ.png",
    "assets/images/alphabet/ل.png",
    "assets/images/alphabet/لا.png",
    "assets/images/alphabet/م.png",
    "assets/images/alphabet/ن.png",
    "assets/images/alphabet/ه.png",
    "assets/images/alphabet/هـ.png",
    "assets/images/alphabet/و.png",
    "assets/images/alphabet/ی.png",
    "assets/images/alphabet/ي.png",
    "assets/images/alphabet/ء.png",
  ];
  List<String> alphabet = [
    "آ",
    "ا",
    "ب",
    "ت",
    "ث",
    "پ",
    "ج",
    "چ",
    "ح",
    "خ",
    "د",
    "ذ",
    "ر",
    "ز",
    "ژ",
    "س",
    "ش",
    "ص",
    "ض",
    "ط",
    "ظ",
    "ع",
    "غ",
    "ف",
    "ق",
    "ک",
    "گ",
    "ل",
    "لا",
    "م",
    "ن",
    "ه",
    "هـ",
    "و",
    "ی",
    "ي",
    "ء",
  ];
  PageController _pageController = PageController();
  int currentIndex = 0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text("الفبا"),
        ),
        body: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: signImage.length,
              itemBuilder: (context, i) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        signImage[i],
                      ),
                    ),
                    Text(
                      alphabet[i],
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: "Iranyekan",
                          fontSize: 30),
                    )
                  ],
                );
              },
              onPageChanged: (index) {
                setState(() => currentIndex = index);
                print("Current Index is: $currentIndex and Index is: $index");
              },
            ),
            Positioned(
              top: 20,
              left: size.width / 2 - 30,
              child: Container(
                  margin: EdgeInsets.only(top: 20),
                  alignment: Alignment.topCenter,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 2, color: kappBarColor))),
                  child: Text("بخش الفبا")),
            ),
            Positioned(
              top: size.height / 2 - kBottomNavigationBarHeight,
              left: 20,
              child: IconButton(
                onPressed: () {
                  if (currentIndex < signImage.length - 1) {
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: kappBarColor,
                ),
              ),
            ),
            Positioned(
              top: size.height / 2 - kBottomNavigationBarHeight,
              right: 10,
              child: IconButton(
                onPressed: () {
                  if (currentIndex > 0) {
                    _pageController.previousPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                icon: Icon(Icons.arrow_back_ios, color: kappBarColor),
              ),
            ),
            Positioned(
                bottom: 50,
                width: size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(signImage.length, (index) {
                    bool isActive = currentIndex == index;
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 1),
                      height: 5,
                      width: isActive ? 15 : 5,
                      decoration: BoxDecoration(
                          color: isActive ? kappBarColor : Colors.grey,
                          borderRadius: BorderRadius.circular(50)),
                    );
                  }),
                ))
          ],
        ),
      ),
    );
  }
}
