
import 'dart:developer';

import 'package:flutter/material.dart';

class ButtonCard extends StatefulWidget {
  final String card_text;
  final String card_path;
  final int index;
  bool flag;
 
  ButtonCard(this.flag, {required this.card_path, required this.card_text, required this.index});
  

  @override
  State<ButtonCard> createState() => _ButtonCardState();
}

class _ButtonCardState extends State<ButtonCard> {
  
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(right:12.0),
      
        child: Container(
          width: 90,
          height: 116,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color:  (widget.flag==true) ? Colors.green : Colors.white),
          child: Column(
            children: [
        
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(widget.card_path),
              ),
              Text(widget.card_text)
        
        
            ],
          ),
        ),
      
    );
  }
}