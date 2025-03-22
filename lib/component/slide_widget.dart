import 'package:flutter/material.dart';

import '../models/OptionModel.dart';
import '../utilities/constants.dart';

class SlideWidget extends StatefulWidget {
  const SlideWidget({super.key, required this.list});
  final List<OptionModel> list;
  @override
  State<SlideWidget> createState() => _SlideWidgetState();
}

class _SlideWidgetState extends State<SlideWidget> {
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
    return Stack(
      children: [
        PageView.builder(
          controller: _pageController,
          itemCount: widget.list.length,
          itemBuilder: (context, i) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(50),
                  child: Image.asset(
                    widget.list[i].image,
                  ),
                ),
                Text(
                  widget.list[i].title,
                  style: TextStyle(fontFamily: "Iranyekan", fontSize: 22),
                )
              ],
            );
          },
          onPageChanged: (index) {
            setState(() => currentIndex = index);
          },
        ),
        Positioned(
          top: size.height / 2 - kBottomNavigationBarHeight,
          left: 20,
          child: IconButton(
            onPressed: () {
              if (currentIndex < widget.list.length - 1) {
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
              children: List.generate(widget.list.length, (index) {
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
    );
  }
}
