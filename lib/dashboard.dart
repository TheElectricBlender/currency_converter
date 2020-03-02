import 'package:currency_converter/currency_service.dart';
import 'package:currency_converter/white_input.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  final currencyVal;
  final convCurrency;
  final currencyOne;
  final currencyTwo;
  final isWhite;

  DashboardPage({this.currencyVal,
    this.convCurrency,
    this.currencyOne,
    this.currencyTwo,
    this.isWhite});

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              color: Color(0xFFEC5759),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 50),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        CurrencyService().getCurrencyString(widget.currencyOne),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontFamily: 'Quicksand'
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        widget.currencyVal.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 120.0,
                            fontFamily: 'Quicksand'
                        ),
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Text(
                      widget.currencyOne,
                      style: TextStyle(
                        color: Color(0xFFFFB6B6),
                        fontSize: 17.0,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      height: 125.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(62.5),
                        color: Colors.white,
                        border: Border.all(
                          color: Color(0xFFEC5759),
                          style: BorderStyle.solid,
                          width: 5.0,
                        )
                      ),
                      child: widget.isWhite ?
                          Icon(Icons.arrow_upward,
                            size: 60.0,
                            color: Color(0xFFEC5759),
                          ) :
                          Icon(Icons.arrow_downward,
                            size: 60.0,
                            color: Color(0xFFEC5759),
                          )
                    ),
                  SizedBox(height: 40.0),
                  Text(
                    widget.currencyTwo,
                    style: TextStyle(
                        color: Color(0xFFFFB6B6),
                        fontSize: 17.0,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold
                    ),
                  ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) =>
                                    InputWhitePage(
                                        origCurrency: widget.currencyOne,
                                        convCurrency: widget.currencyTwo
                                    )
                            ));

                      },
                      child: Text(
                        widget.convCurrency.toString(),
                        style: TextStyle(
                            color: Color(0xFFEC5759),
                            fontSize: 120.0,
                            fontFamily: 'Quicksand'
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        CurrencyService().getCurrencyString(widget.currencyTwo),
                        style: TextStyle(
                            color: Color(0xFFEC5759),
                            fontSize: 22.0,
                            fontFamily: 'Quicksand'
                        ),
                      ),
                    ),

                  ],
                )
              ),
            )
          ],
        )
    );
  }
}
