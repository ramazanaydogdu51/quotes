import 'package:flutter/material.dart';
import 'Quote.dart';


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

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
               quote.text,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600]
                ),
              ),
              SizedBox(height: 6,),
              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800]
                ),
              )
            ],
          ),
        ),
      ),
    );

  }

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
          ...quotesList.map((quote) => quoteTemplate(quote)),
        ],
      ),
    );
  }
}
