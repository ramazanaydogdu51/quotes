import 'package:flutter/material.dart';
import 'quote.dart';


void main() => runApp(MaterialApp(home: Quotelist()));

class Quotelist extends StatefulWidget {
  const Quotelist({super.key});

  @override
  State<Quotelist> createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  List<Quote> quotesList = [
    Quote(text: 'it is gonna be legend wait for it dary!', author: 'barney stinson'),
    Quote(text: 'it is gonna be legend wait for it dary!', author: 'barney stinson'),
    Quote(text: 'it is gonna be legend wait for it dary!', author: 'barney stinson')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quote'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // yontem bir
        // children:
        //   quotesList.map((quote) => Text(quote)).toList(),
        children: [
          ...quotesList.map((quote) => Text('${quote.text} ---->> ${quote.author}')),
        ],
      ),
    );
  }
}
