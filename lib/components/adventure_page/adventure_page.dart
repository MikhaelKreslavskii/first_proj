import 'package:flutter/material.dart';

class AdventurePage extends StatelessWidget {
  const AdventurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Потрясающие приключения по\nвсей России",
            style: TextStyle(fontSize: 19, fontFamily: 'Averta'),
          ),
          Container(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  height: 180,
                  width: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                          image:
                              ExactAssetImage('lib/assets/images/moscow.png'))),
                  child: Center(
                    child: Text(
                      "МОСКВА",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Averta'),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Container(
                  height: 180,
                  width: 220,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                      image: DecorationImage(
                          scale: 0.3,
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'lib/assets/images/spb.jpg',
                          ))),
                  child: Center(
                    child: Text(
                      "САНКТ-ПЕТЕРБУРГ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
