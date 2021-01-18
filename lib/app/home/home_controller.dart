import 'package:flutter_rnd/data/repositories/quote_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _quotes = [].obs;

  set quotes(value) => _quotes.assignAll(value);

  get quotes => _quotes;

  QuoteRepository repository = Get.put(QuoteRepository());

  @override
  onInit() {
    getQuotes();

    super.onInit();
  }

  getQuotes() async {
    quotes = await repository.getAll();
  }
}
