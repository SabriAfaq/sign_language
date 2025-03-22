import 'package:flutter/material.dart';
import 'package:sign_language/component/slide_widget.dart';
import 'package:sign_language/services/religious_list.dart';

import '../utilities/constants.dart';

class ReligiousPage extends StatelessWidget {
  const ReligiousPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: kbackgruongColor,
        appBar: AppBar(
          title: Text("بخش دین و مذهب"),
        ),
        body: SlideWidget(list: religiousList),
      ),
    );
  }
}
