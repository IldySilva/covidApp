import 'package:flutter/material.dart';

class CardsOther extends StatelessWidget {
  final String image;
  final String texto;

  CardsOther({this.texto, this.image});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(size.height / 80),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child:
                      Container(height: size.height / 6, color: Colors.indigo)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: size.height / 6,
                    alignment: Alignment.center,
                    width: size.width / 1.7,
                    child: Text(
                      texto,
                      style: TextStyle(
                          fontSize: 24, color: Colors.white, letterSpacing: 1),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                    child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                  height: size.height / 5.3,
                  width: size.width / 2.5,
                )),
              ),
            ],
          )),
    );
  }
}
