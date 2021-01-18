import 'package:flutter/material.dart';
import 'package:flutter_rnd/data/models/quote_model.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Container(
        child: GetX<HomeController>(
            init: HomeController(),
            builder: (_) {
              if (_.quotes.length > 0) {
                return Container(
                  child: ListView.builder(
                    itemCount: _.quotes.length,
                    itemBuilder: (context, index) {
                      Quote quote = _.quotes[index];
                      return ListTile(
                        leading: Icon(Icons.format_quote),
                        title: Text(quote.text != null ? quote.text : ''),
                        subtitle: Text(
                            '- ' + (quote.author != null ? quote.author : '')),
                      );
                    },
                  ),
                );
              } else {
                return Container();
              }
            }),
      ),
    );
  }
}
