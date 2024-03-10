class CoatOfArms {
  String? png;
  String? svg;

  CoatOfArms({
    this.png,
    this.svg,
  });

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
        png: json["png"],
        svg: json["svg"],
      );

  Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
      };
}
