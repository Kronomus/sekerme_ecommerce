
class OrdeDetails{

  final String id_order;
  final String id_product;
  final String unit_price;
  final String quantity;
  final String discount;

  OrdeDetails({
    required this.id_order,
    required this.id_product,
    required this.unit_price,
    required this.quantity,
    required this.discount
  });

  factory OrdeDetails.fromJson(Map<String, dynamic> json) => OrdeDetails(
    id_order: json['id_order'],
    id_product: json['id_product'],
    unit_price: json['unit_price'],
    quantity: json['quantity'],
    discount: json['discount']
  );

  Map<String, dynamic> toJson() => {
    'id_order': id_order,
    'id_product': id_product,
    'unit_price': unit_price,
    'quantity': quantity,
    'discount': discount
  };






}