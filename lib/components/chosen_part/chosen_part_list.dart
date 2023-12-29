import 'dart:developer';

import 'package:first_proj/bloc/page_bloc.dart';

import 'package:first_proj/components/chosen_part/card_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChosenPartList extends StatefulWidget {
  final pageBloc;
  ChosenPartList({required this.pageBloc});

  @override
  State<ChosenPartList> createState() => _ChosenPartListState();
}

class _ChosenPartListState extends State<ChosenPartList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 28,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            "Гастрономическое приключение - \nВино",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
            height: 400,
            child: BlocBuilder<PageBloc, PageState>(
              bloc: widget.pageBloc,
              builder: (context, state) {
                if (state is PageWineChanged) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return state.Cards[index];
                    },
                    itemCount: state.Cards.length,
                  );
                }
                if (state is PageCheeseChanged) {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return state.Cards[index];
                    },
                    itemCount: state.Cards.length,
                  );
                } else {
                  List cards = [
                    CardPart(imagePath: 'lib/assets/images/cheese_card.png'),
                    CardPart(imagePath: 'lib/assets/images/cheese_card.png')
                  ];
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return cards[index];
                    },
                    itemCount: cards.length,
                  );
                }
              },
            )),
      ],
    );
  }
}
