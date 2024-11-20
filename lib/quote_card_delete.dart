import 'package:flutter/material.dart';
import 'quote.dart';


class QuoteCard extends StatelessWidget {

  final Quote quote ;
  final VoidCallback delete;

  QuoteCard ({required this.quote ,  required this.delete});

  @override
  Widget build(BuildContext context) {
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
              ),
              SizedBox(height: 6),
              TextButton.icon(
                  onPressed: delete,
                  label: Text('delete'),
                  icon: Icon(Icons.delete),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
