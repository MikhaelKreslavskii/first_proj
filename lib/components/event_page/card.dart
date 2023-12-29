import 'package:flutter/material.dart';

class CardEvent extends StatelessWidget {
  final String image_path;
  const CardEvent({required this.image_path});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 152,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          image: DecorationImage(image: ExactAssetImage(image_path))),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 24,
            width: 102,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 252, 228, 157),
                borderRadius: BorderRadius.circular(4)),
            child: Center(
                child: Text(
              "3 мероприятия",
              style: TextStyle(
                  color: Color.fromARGB(255, 118, 91, 10), fontSize: 12),
            )),
          ),
          SizedBox(
            height: 94,
          ),
          Container(
            height: 46,
            width: 136,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 153, 153, 66),
                borderRadius: BorderRadius.circular(4)),
            child: Center(
                child: Text(
              "Дизайн Завод\nМосква",
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
          ),
        ]),
      ),
    );
  }
}
