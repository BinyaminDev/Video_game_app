// To parse this JSON data, do
//
//     final games = gamesFromJson(jsonString);

import 'dart:convert';

List<Games> gamesFromJson(String str) =>
 List<Games>.from(json.decode(str).map((x) => Games.fromJson(x)));

class Games {
    Games({
        this.id,
        this.cover,
        this.name,
    });

    int? id;
    Cover? cover;
    String? name;

    factory Games.fromJson(Map<String, dynamic> json) => Games(
        id: json["id"],
        cover: json["cover"] == null ? null : Cover.fromJson(json["cover"]),
        name: json["name"],
    );

}

class Cover {
    Cover({
        this.id,
        this.url,
    });

    int? id;
    String? url;

    factory Cover.fromJson(Map<String, dynamic> json) => Cover(
        id: json["id"],
        url: json["url"],
    );

 
}


