import 'package:dart_application_2/class/cop.dart';

class Currencies {
  Cop? cop;

  Currencies({
    this.cop,
  });

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        cop: json["COP"] == null ? null : Cop.fromJson(json["COP"]),
      );

  Map<String, dynamic> toJson() => {
        "COP": cop?.toJson(),
      };
}
