
class ninos_abuelosModels{
  final String nombre;
  final String fecha_nacimiento;
  final String numero_identificacion;


  const ninos_abuelosModels({
  required this.nombre  ,
  required this.fecha_nacimiento  ,
  required this.numero_identificacion
  });

  static ninos_abuelosModels fromJson(Map<String, dynamic> json) => ninos_abuelosModels(
    nombre: json['nombre'],
    fecha_nacimiento: json['fecha_nacimiento'],
    numero_identificacion: json ['numero_identificacion']

  );


  Map<String,dynamic> toJson() => <String,dynamic>{
    'nombre' : nombre,
    'fecha_nacimiento' : fecha_nacimiento,
    'numero_identificacion' : numero_identificacion

  };

}