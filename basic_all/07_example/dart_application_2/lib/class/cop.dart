class Cop {
  String? name;
  String? symbol;

  Cop({
    this.name,
    this.symbol,
  });

  factory Cop.fromJson(Map<String, dynamic> json) => Cop(
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
      };
}
