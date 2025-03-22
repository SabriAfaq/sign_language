import 'package:flutter/material.dart';
import 'package:sign_language/component/slide_widget.dart';
import 'package:sign_language/services/alphabet_list.dart';

import '../utilities/constants.dart';

class AlphabetPage extends StatelessWidget {
  const AlphabetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: kbackgruongColor,
        appBar: AppBar(
          title: Text("الفبا"),
        ),
        body: SlideWidget(list: alphabetList),
      ),
    );
  }
}
