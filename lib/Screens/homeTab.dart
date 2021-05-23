import 'package:NewCovidApp/models/preventions.dart';
import 'package:NewCovidApp/models/sintomas.dart';
import 'package:NewCovidApp/widgets/HeaderPrincipal.dart';
import 'package:flutter/material.dart';

class HomeTela extends StatefulWidget {
  @override
  _HomeTelaState createState() => _HomeTelaState();
}

class _HomeTelaState extends State<HomeTela> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderPrincipal(),
        Padding(
          padding: EdgeInsets.only(
              top: size.height / 39.0,
              left: size.width / 17,
              right: size.width / 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Prevenções",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              Text(
                "ver tudo",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Container(
          height: size.height / 5.5,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              itemCount: preventions.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: size.width / 30, top: size.height / 80),
                  child: Container(
                    width: size.width / 3.5,
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage(preventions[index].urlImage),
                          radius: 40,
                        ),
                        Text(preventions[index].texto),
                      ],
                    ),
                  ),
                );
              }),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: size.width / 17, right: size.width / 17),
          child: Text(
            "Sintomas",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Container(
          height: size.height / 5,
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: sintomas.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(
                      left: size.width / 30, top: size.height / 80),
                  child: Container(
                    width: size.width / 3.5,
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(sintomas[index].urlImage),
                          radius: 40,
                          backgroundColor: Colors.indigo[800],
                        ),
                        Text(sintomas[index].texto),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
