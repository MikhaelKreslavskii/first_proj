import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CardPart extends StatelessWidget {
  final String imagePath;
  const CardPart({required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 13, bottom: 16),
      child: Container(
        width: 220,
        height: 398,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3), color: Colors.white),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 120,
            width: 220,
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "Дебютанты на подиуме \nСырного Сомелье",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(
              "Группа до 10 чел. 8 часов",
              style: TextStyle(fontSize: 11),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Container(
              height: 20,
              width: 68,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 247, 245, 240),
                  borderRadius: BorderRadius.circular(12)),
              child: Center(child: Text("Новинка")),
            ),
          ),
          SizedBox(
            height: 45,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: RatingBar.builder(
                itemSize: 12,
                initialRating: 3.5,
                itemBuilder: (context, _) {
                  return Icon(
                    Icons.star,
                    color: Colors.amber,
                  );
                },
                onRatingUpdate: (rating) {}),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text("26 оценок (458)"),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Text(
                  "5500 руб",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                Text(" с человека")
              ],
            ),
          )
        ]),
      ),
    );
  }
}
