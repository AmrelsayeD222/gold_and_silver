class SilverModel {
  final String name;
  final double price;
  final String symbol;
  final DateTime updatedAt;
  final String updatedAtReadable;

  SilverModel({
    required this.name,
    required this.price,
    required this.symbol,
    required this.updatedAt,
    required this.updatedAtReadable,
  });

  factory SilverModel.fromJson(Map<String, dynamic> json) {
    return SilverModel(
      name: json['name'],
      price: (json['price'] as num).toDouble(),
      symbol: json['symbol'],
      updatedAt: DateTime.parse(json['updatedAt']),
      updatedAtReadable: json['updatedAtReadable'],
    );
  }
}
