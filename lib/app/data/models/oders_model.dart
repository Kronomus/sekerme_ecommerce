
class OrdesModel{

  final String order_date;
  final String ship_country;
  final String ship_region;
  final String ship_city;
  final String ship_address;
  final String ship_postal_code;

  OrdesModel({
    required this.order_date,
    required this.ship_country,
    required this.ship_region,
    required this.ship_city,
    required this.ship_address,
    required this.ship_postal_code
  });

  factory OrdesModel.fromJson(Map<String, dynamic> json) => OrdesModel(
    order_date: json['order_date'],
    ship_country: json['ship_country'],
    ship_region: json['ship_region'],
    ship_city: json['ship_city'],
    ship_address: json['ship_address'],
    ship_postal_code: json['ship_postal_code']
  );

  Map<String, dynamic> toJson() => {
    'order_date': order_date,
    'ship_country': ship_country,
    'ship_region': ship_region,
    'ship_city': ship_city,
    'ship_address': ship_address,
    'ship_postal_code': ship_postal_code
  };
}