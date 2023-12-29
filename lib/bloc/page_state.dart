part of 'page_bloc.dart';

class PageState {}

class PageInitial extends PageState {}

class PageWineChanged extends PageState {
  List Cards = [
    CardPart(imagePath: 'lib/assets/images/cheese_card.png'),
    CardPart(imagePath: 'lib/assets/images/cheese_card.png')
  ];
}

class PageCheeseChanged extends PageState {
  List Cards = [
    CardPart(imagePath: 'lib/assets/images/cheese_dish.png'),
    CardPart(imagePath: 'lib/assets/images/cheese_dish.png')
  ];
}
