import 'dart:developer';

import 'package:first_proj/bloc/page_bloc.dart';

import 'package:first_proj/components/chosen_part/card_part.dart';
import 'package:first_proj/components/second_slider/button_card.dart';
import 'package:first_proj/components/second_slider/card_info.dart';
import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  final pageBloc;
  CardList({required this.pageBloc});

  @override
  State<CardList> createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  List button_list = [
    CardInfo(
      card_path: 'lib/assets/images/wine.png',
      text: "Вино",
      isSelected: true,
    ),
    CardInfo(
      card_path: 'lib/assets/images/cheese.png',
      text: "Сыр",
      isSelected: false,
    ),
    CardInfo(
      card_path: 'lib/assets/images/sheep.png',
      text: "Местное",
      isSelected: false,
    ),
    CardInfo(
      card_path: 'lib/assets/images/schef_dish.png',
      text: "От шефа",
      isSelected: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    initState() {
      widget.pageBloc.add(ChangeWinePageEvent());
    }

    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 24, bottom: 28),
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: button_list.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Container(
                  width: 90,
                  height: 116,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: (button_list[index].isSelected == true)
                          ? Color.fromARGB(255, 51, 51, 51)
                          : Colors.white),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(button_list[index].card_path),
                      ),
                      Text(
                        button_list[index].text,
                        style: TextStyle(
                            color: (button_list[index].isSelected == true)
                                ? Colors.white
                                : Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              onTap: () {
                if (!button_list[index].isSelected) {
                  setState(() {
                    button_list[index].isSelected =
                        !button_list[index].isSelected;
                    if (index == 0) {
                      widget.pageBloc.add(ChangeWinePageEvent());
                    } else {
                      widget.pageBloc.add(ChangeCheesePageEvent());
                    }
                    log("Current pressed ${button_list[index].isSelected}");

                    for (int i = 0; i < button_list.length; i++) {
                      if (i != index) {
                        button_list[i].isSelected = false;
                        log('${button_list[i].isSelected}');
                      }
                    }
                  });
                }
              },
            );
          },
        ),
      ),
    );
  }
}
