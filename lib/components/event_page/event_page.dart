import 'package:first_proj/components/event_page/card.dart';
import 'package:flutter/material.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Вино – События рядом с вами",
            style: TextStyle(fontSize: 19, fontFamily: 'Averta'),
          ),
          Row(
            ///  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardEvent(
                image_path: 'lib/assets/images/wine_card.png',
              ),
              SizedBox(
                width: 8,
              ),
              CardEvent(
                image_path: 'lib/assets/images/wine_card.png',
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            ///  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardEvent(
                image_path: 'lib/assets/images/hotel_card.png',
              ),
              SizedBox(
                width: 8,
              ),
              CardEvent(
                image_path: 'lib/assets/images/hotel_card.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
