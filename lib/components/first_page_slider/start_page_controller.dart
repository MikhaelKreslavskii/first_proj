import 'package:first_proj/components/first_page_slider/first_block.dart';
import 'package:first_proj/components/first_page_slider/second_block.dart';
import 'package:first_proj/components/first_page_slider/third_block.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StartPageController extends StatefulWidget {
  const StartPageController({super.key});

  @override
  State<StartPageController> createState() => _StartPageControllerState();
}

class _StartPageControllerState extends State<StartPageController> {
  final _controller = PageController();
  final List blocks = [FirstBlock(), SecondBlock(), ThirdBlock()];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Stack(children: [
        PageView.builder(
          controller: _controller,
          itemCount: 3,
          itemBuilder: (context, index) {
            return blocks[index];
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 340, left: 24),
          child: SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: SwapEffect(
                activeDotColor: Colors.white,
                dotWidth: 8,
                dotHeight: 8,
                dotColor: Colors.grey),
          ),
        )
      ]),
    );
  }
}
