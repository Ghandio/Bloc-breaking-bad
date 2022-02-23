class Quotes {
  late String quote;
  Quotes.fromJson(Map<String, dynamic> map) {
    quote = map['quote'];
  }
}
