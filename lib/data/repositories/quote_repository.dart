import 'package:flutter_rnd/data/providers/quote_provider.dart';
import 'package:get/get.dart';

class QuoteRepository {
  final QuoteProvider _provider = Get.put(QuoteProvider());

  getAll() async {
    return await _provider.getAll();
  }
}
