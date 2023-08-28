import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(
    MaterialApp(
      home: QuoteList(),
    ),
  );
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
      text: 'Good relations with the Wookiees, I have.',
      author: 'Maria Valentina Duarte',
    ),
    Quote(
      text: 'Hodor? Hodor.',
      author: 'Duram Bar Emmon',
    ),
    Quote(
      text: 'Damn, Eskel... you got an hourglass figure',
      author: 'Donar an Hindar',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          elevation: 0,
        ),
        body: Column(
          children: quotes
              .map((quote) => Text('${quote.text} - ${quote.author}'))
              .toList(),
        ));
  }
}
