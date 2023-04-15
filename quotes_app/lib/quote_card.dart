import 'package:flutter/material.dart';
import 'quote.dart';


class QuotesCard extends StatelessWidget {

  final Quote? quote;
  final void Function()? delete;
  const QuotesCard({this.quote,  this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget> [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),

            const SizedBox(height: 6),

            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[800],
              ),
            ),

            const SizedBox(height: 8),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                FilledButton.icon(
                  onPressed: delete,
                  label: const Text('Delete'),
                  icon: const Icon(Icons.delete),
                  style: FilledButton.styleFrom(
                    backgroundColor:  Colors.red[400], // set the background color
                  ),
                ),
              ],

            ),

          ],
        ),
      ),
    );
  }
}
