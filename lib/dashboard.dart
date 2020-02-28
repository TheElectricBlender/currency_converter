import 'package:currency_converter/currency_service.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  final currencyVal;
  final convertedCurrency;
  final currencyOne;
  final currencyTwo;
  final isWhite;

  DashboardPage({this.currencyVal,
    this.convertedCurrency,
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
                    SizedBox(height: 30),
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
                    SizedBox(height: 20.0),
                    Text(
                      widget.currencyOne,
                      style: TextStyle(
                        color: Color(0xFFFFB6B6),
                        fontSize: 17.0,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.bold
                      ),
                    )

                  ],
                )
              ),
            )
          ],
        )
    );
  }
}
