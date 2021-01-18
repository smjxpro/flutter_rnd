import 'package:flutter_rnd/data/models/quote_model.dart';
import 'package:get/get.dart';

const baseUrl = 'https://type.fit/api/quotes';

class QuoteProvider extends GetConnect {
  Future<List<Quote>> getAll() async {
    try {
      final response = await get(baseUrl);
      if (response.statusCode == 200) {
        print(response.bodyString);

        return quotesFromJson(response.bodyString);
      } else {
        print('Error -getAll');
      }
    } catch (_) {}
    return null;
  }
}
