import 'package:first_proj/components/first_page_slider/start_page_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color.fromARGB(255, 249, 209, 88);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Row(children: <Widget>[
          Container(
            /// height: 34,
            width: 320,
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
            width: 48,
            height: 48,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Icon(Icons.notifications_outlined),
          )
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          StartPageController(),
        ]),
      ),
    );
  }
}
