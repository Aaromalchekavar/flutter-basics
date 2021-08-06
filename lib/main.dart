import 'package:flutter/material.dart';
import 'package:newsinlines/quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({ Key? key }) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text:'EWBBWKJKJNHS', author: 'hgdsakjhskjjhr'),
    Quote(text:'EWBBWKJKJNHS', author: 'hgdsakjhskjjhr'),
    Quote(text:'EWBBWKJKJNHS', author: 'hgdsakjhskjjhr'),
  ];
  
  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          Text(quote.text,
          style: TextStyle(color: Colors.amber,fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height:10),
          Text(quote.author)
        ],),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quote List Example'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote){
          return quoteTemplate(quote);
        }).toList(),
      )
    );
  }
}