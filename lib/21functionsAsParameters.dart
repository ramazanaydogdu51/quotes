import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card_delete.dart';

void main() => runApp(MaterialApp(home: Quotelist()));

class Quotelist extends StatefulWidget {
  const Quotelist({super.key});

  @override
  State<Quotelist> createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {
  List<Quote> quotesList = [
    Quote(text: 'it is gonna be legend wait for it dary! 1', author: 'barney stinson'),
    Quote(text: 'it is gonna be legend wait for it dary! 2', author: 'barney stinson'),
    Quote(text: 'it is gonna be legend wait for it dary! 3', author: 'barney stinson')
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
        children: quotesList.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotesList.remove(quote);
              });
            }

        )).toList(),

      )
    );
  }
}


// bunu class olarak quote_card.dart ' verdik

// class QuoteCard extends StatelessWidget {
//
//   final Quote quote ;
//   QuoteCard ({required this.quote});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.fromLTRB(16.0, 16, 16, 0),
//       child: Padding(
//         padding: const EdgeInsets.all(2.0),
//         child: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Text(
//                quote.text,
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.grey[600]
//                 ),
//               ),
//               SizedBox(height: 6,),
//               Text(
//                 quote.author,
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Colors.grey[800]
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
