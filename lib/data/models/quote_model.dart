// To parse this JSON data, do
//
//     final quote = quotesFromJson(jsonString);

import 'dart:convert';

List<Quote> quotesFromJson(String str) =>
    List<Quote>.from(json.decode(str).map((x) => Quote.fromJson(x)));

String quotesToJson(List<Quote> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Quote {
  Quote({
    this.text,
    this.author,
  });

  String text;
  String author;

  factory Quote.fromJson(Map<String, dynamic> json) => Quote(
        text: json["text"],
        author: json["author"] == null ? null : json["author"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "author": author == null ? null : author,
      };
}
