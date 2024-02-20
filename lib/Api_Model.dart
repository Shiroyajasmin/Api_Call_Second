// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';

List<Temperatures> temperaturesFromJson(String str) => List<Temperatures>.from(json.decode(str).map((x) => Temperatures.fromJson(x)));

String temperaturesToJson(List<Temperatures> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Temperatures {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Temperatures({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Temperatures.fromJson(Map<String, dynamic> json) => Temperatures(
    albumId: json["albumId"],
    id: json["id"],
    title: json["title"],
    url: json["url"],
    thumbnailUrl: json["thumbnailUrl"],
  );

  Map<String, dynamic> toJson() => {
    "albumId": albumId,
    "id": id,
    "title": title,
    "url": url,
    "thumbnailUrl": thumbnailUrl,
  };
}
