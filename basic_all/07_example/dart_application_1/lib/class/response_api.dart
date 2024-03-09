import 'dart:convert';

RequestResponse requestResponseFromJson(String str) =>
    RequestResponse.fromJson(json.decode(str));

String requestResponseToJson(RequestResponse data) =>
    json.encode(data.toJson());

class RequestResponse {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<Persons>? data;
  Support? support;

  RequestResponse({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
    required this.support,
  });

  factory RequestResponse.fromJson(Map<String, dynamic> json) =>
      RequestResponse(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: [...json["data"].map((x) => Persons.fromJson(x))],
        //data: json["data"] == null ? [] : List<Persons>.from(json["data"]!.map((x) => Persons.fromJson(x))),
        support:
            json["support"] == null ? null : Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "support": support?.toJson(),
      };
}

class Persons {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  Persons({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory Persons.fromJson(Map<String, dynamic> json) => Persons(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}

class Support {
  String? url;
  String? text;

  Support({
    required this.url,
    required this.text,
  });

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}
