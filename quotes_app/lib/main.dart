import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(const MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List<Quote> quotes = [
    Quote('Be yourself; everyone else is already taken', 'Afnan'),
    Quote('I have nothing to declare except my genius', 'Sinan'),
    Quote('The truth is rarely pure and never simple', 'Kalandar')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Quotes App"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: quotes.map((quote) => QuotesCard(
                quote:quote,
                delete: (){
                  setState(() {
                    quotes.remove(quote);
                  });
            },
            )).toList(),
          ),
        ),
      ),
    );
  }
}
