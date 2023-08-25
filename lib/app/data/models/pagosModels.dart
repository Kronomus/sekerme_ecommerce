

class pagosModels{
  final double monto;
  final String fecha_pago;
  final String metodo_pago;


  const pagosModels({
    required this.monto,
    required this.fecha_pago,
    required this.metodo_pago
});

  static pagosModels fromJson (Map<String, dynamic>json) => pagosModels(
      monto: json ['monto'],
      fecha_pago: json ['fecha_pago'],
      metodo_pago: json ['metodo_pago']
  );


  Map<String,dynamic> toJson() => <String,dynamic>{
    'monto' : monto,
    'fecha_pago' : fecha_pago,
    'metodo_pago' : metodo_pago,

  };



}