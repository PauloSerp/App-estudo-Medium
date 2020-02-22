import 'package:flutter/material.dart';
import 'package:finance_quote/finance_quote.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FinanceQuoteMain(),
    );
  }
}

class FinanceQuoteMain extends StatefulWidget {
  @override
  _FinanceQuoteState createState() => _FinanceQuoteState();
}

class _FinanceQuoteState extends State<FinanceQuoteMain> {
  String klabinPrecoAtual = "", klabinBaixa = "", klabinAlta = "";

  String itauPrecoAtual = "", itauBaixa = "", itauAlta = "";

  String petroPrecoAtual = "", petroBaixa = "", petroAlta = "";

  @override
  Widget build(BuildContext context) {
    klabinPreco();
    itauPreco();
    petroPreco();
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'ITUB4',
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'Itaú Unibanco',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    FlatButton(
                      child: Text(
                        'ITAU',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onPressed: () => {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'R\$',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Text(
                      itauPrecoAtual,
                      style: TextStyle(fontSize: 60),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Min',
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              itauBaixa,
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.start,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Max',
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              itauAlta,
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.start,
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[

                      ],
                    )
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.yellow[200],
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'PETR4',
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'Petroleo Brasileiro SA Petrobras Preference Shares',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    FlatButton(
                      child: Text(
                        'PETROBRAS',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onPressed: () => {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'R\$',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Text(
                      petroPrecoAtual,
                      style: TextStyle(fontSize: 60),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Min',
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              petroBaixa,
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.start,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Max',
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              petroAlta,
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.start,
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'KLBN4',
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          'Klabin SA Preference Shares',
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    FlatButton(
                      child: Text(
                        'KLABIN',
                        style: TextStyle(color: Colors.blue),
                      ),
                      onPressed: () => {},
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'R\$',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Text(
                      klabinPrecoAtual,
                      style: TextStyle(fontSize: 60),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Min',
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              klabinBaixa,
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.start,
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Max',
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(
                              klabinAlta,
                              style: TextStyle(fontSize: 15),
                              textAlign: TextAlign.start,
                            )
                          ],
                        ),
                      ],
                    ),

                  ],
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.green[200],
                borderRadius: BorderRadius.circular(10)),
          ),
        ],
      ),
    );
  }

  Future<String> klabinPreco() async {
    final Map<String, Map<String, dynamic>> quotePrice =
        await FinanceQuote.getRawData(
            quoteProvider: QuoteProvider.yahoo, symbols: <String>['KLBN4.SA']);
    setState(() {
      klabinPrecoAtual = quotePrice['KLBN4.SA']['regularMarketPrice'].toString();
      klabinBaixa = quotePrice['KLBN4.SA']['regularMarketDayLow'].toString();
      klabinAlta = quotePrice['KLBN4.SA']['regularMarketDayHigh'].toString();
    });
  }

  Future<String> petroPreco() async {
    final Map<String, Map<String, dynamic>> quotePrice =
        await FinanceQuote.getRawData(
            quoteProvider: QuoteProvider.yahoo, symbols: <String>['PETR4.SA']);
    setState(() {
      petroPrecoAtual = quotePrice['PETR4.SA']['regularMarketPrice'].toString();
      petroBaixa = quotePrice['PETR4.SA']['regularMarketDayLow'].toString();
      petroAlta = quotePrice['PETR4.SA']['regularMarketDayHigh'].toString();
    });
  }

  Future<String> itauPreco() async {
    final Map<String, Map<String, dynamic>> quotePrice =
        await FinanceQuote.getRawData(
            quoteProvider: QuoteProvider.yahoo, symbols: <String>['ITUB4.SA']);
    setState(() {
      itauPrecoAtual = quotePrice['ITUB4.SA']['regularMarketPrice'].toString();
      itauBaixa = quotePrice['ITUB4.SA']['regularMarketDayLow'].toString();
      itauAlta = quotePrice['ITUB4.SA']['regularMarketDayHigh'].toString();
      print(quotePrice['ITUB4.SA']);
    });
  }
}
