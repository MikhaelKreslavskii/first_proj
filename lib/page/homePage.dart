import 'package:first_proj/bloc/page_bloc.dart';
import 'package:first_proj/components/adventure_page/adventure_page.dart';
import 'package:first_proj/components/chosen_part/chosen_part_list.dart';
import 'package:first_proj/components/event_page/event_page.dart';
import 'package:first_proj/components/first_page_slider/start_page_controller.dart';
import 'package:first_proj/components/second_slider/card_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageBloc = PageBloc();
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 249, 209, 88);
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 245, 240),
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Row(children: <Widget>[
            Container(
              /// height: 34,
              constraints: BoxConstraints.loose(Size(312, 34)),
              width: 312,
              child: TextField(
                ///cursorHeight: 4,
                ///  textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(1.0),
                    hintText: "Куда отправиться?",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none),
                    fillColor: Colors.white,
                    filled: true),
              ),
            ),
            SizedBox(
              width: 6,
            ),
            Container(
              constraints: BoxConstraints.loose(Size(34, 34)),
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Icon(Icons.notifications_outlined),
            )
          ]),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            StartPageController(),
            CardList(
              pageBloc: pageBloc,
            ),
            ChosenPartList(
              pageBloc: pageBloc,
            ),
            EventPage(),
            SizedBox(
              height: 28,
            ),
            AdventurePage(),
          ]),
        ),
      );
    });
  }
}
