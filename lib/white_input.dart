import 'package:currency_converter/currency_service.dart';
import 'package:flutter/material.dart';

class InputWhitePage extends StatefulWidget {

  final convCurrency;
  final origCurrency;

  InputWhitePage({this.convCurrency, this.origCurrency});

  @override
  _InputWhitePageState createState() => _InputWhitePageState();
}

class _InputWhitePageState extends State<InputWhitePage> {

  var currInput = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 25.0),
          InkWell(
            onTap: () {
              setState(() {
                currInput = 0;
              });
            },
            child: Text(
              'tap to delete',
              style: TextStyle(
                  color: Color(0xFFFFB6B6),
                  fontSize: 17.0,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
                currInput.toString(),
              style: TextStyle(
                  color: Color(0xFFEC5759),
                  fontSize: 100.0,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 25),
          numberRow(1,2,3),
          SizedBox(height: 25),
          numberRow(4,5,6),
          SizedBox(height: 25),
          numberRow(7,8,9),
          SizedBox(height: 25),
          finalRow()
        ],
      )
    );
  }

  Widget numberRow(num1, num2, num3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {
            calcNumber(num1);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Color(0xFFFFB6B6)
            ),
          ),
        ),
        InkWell(
          onTap: () {
            calcNumber(num2);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color(0xFFFFB6B6)
            ),
          ),
        ),
        InkWell(
          onTap: () {
            calcNumber(num3);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color(0xFFFFB6B6)
            ),
          ),
        )
      ],
    );
  }

  Widget finalRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        InkWell(
          onTap: () {
            //calcNumber(num1);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color(0xFFFFB6B6)
            ),
          ),
        ),
        InkWell(
          onTap: () {
            calcNumber(0);
          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color(0xFFFFB6B6)
            ),
          ),
        ),
        InkWell(
          onTap: () {
            //CurrencyService().conve

          },
          child: Container(
            height: 80.0,
            width: 80.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: Color(0xFFFFB6B6)),
                child: Center(
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 25,
                  )),
                ),
            )
      ],
    );
  }

  calcNumber(num) {
    if (currInput == 0) {
      setState(() {
        currInput = num;
      });
    }
    else {
      setState(() {
        currInput = (currInput * 10) + num;
      });
    }
  }


}
