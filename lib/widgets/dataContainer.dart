import 'package:NewCovidApp/widgets/SwitchButtons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DataContainer extends StatefulWidget {
  final String title;
  final String dataNumber;
  final Color cor;

  DataContainer({this.dataNumber, this.title, this.cor});

  @override
  _DataContainerState createState() => _DataContainerState();
}

class _DataContainerState extends State<DataContainer> {
  @override
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Flexible(
      flex: 1,
      fit: FlexFit.tight,
      child: Padding(
        padding: EdgeInsets.only(
            left: size.width / 60,
            right: size.width / 60,
            top: size.width / 60),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: EdgeInsets.only(
                top: size.width / 50,
                left: size.width / 50,
                bottom: size.width / 50),
            color: widget.cor,
            height: size.height / 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                Text(
                  widget.dataNumber,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 22),
                  textScaleFactor: 0.8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
