import 'package:dart_application_2/class/translation.dart';

class NativeName {
  Translation? spa;

  NativeName({
    this.spa,
  });

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        spa: json["spa"] == null ? null : Translation.fromJson(json["spa"]),
      );

  Map<String, dynamic> toJson() => {
        "spa": spa?.toJson(),
      };
}
