import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sign_language/models/card_model.dart';
import 'package:sign_language/utilities/constants.dart';

class FirstUIPage extends StatelessWidget {
  final CardModel card;
  const FirstUIPage({
    required this.card,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, CupertinoPageRoute(builder: (_) => card.page)),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("${card.image}"),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${card.title}",
              style: TextStyle(
                color: kappBarTitle,
                fontSize: 18,
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(
          color: card.color ?? Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 1,
              color: Colors.black.withOpacity(0.1),
              // blurRadius: 0,
              // spreadRadius: 6,
              // color: Colors.white
              // color: card.color != null
              //     ? card.color!.withOpacity(.3)
              //     : Theme.of(context).primaryColor.withOpacity(.3),
            ),
          ],
        ),
      ),
    );
  }
}
