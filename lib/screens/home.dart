import 'package:flutter/material.dart';
import 'package:sign_language/component/firstUI_Page.dart';
import 'package:sign_language/services/card_list.dart';
import 'package:sign_language/utilities/constants.dart';

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
