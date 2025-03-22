import 'package:flutter/material.dart';
import 'package:sign_language/component/slide_widget.dart';
import 'package:sign_language/services/family_list.dart';

import '../utilities/constants.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: kbackgruongColor,
        appBar: AppBar(
          title: Text("بخش فامیل و اقارب"),
        ),
        body: SlideWidget(list: familyList),
      ),
    );
  }
}
