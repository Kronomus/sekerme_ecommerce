class empleadosModels{
  final String nombre;
  final String apellido;
  final String cargo;
  final String? telefono;
  final String sexo;
  final String ubicacion;

  const empleadosModels({
  required this.nombre  ,
  required this.apellido  ,
  required this.cargo  ,
  this.telefono  ,
  required this.sexo  ,
  required this.ubicacion  ,

  });

 static empleadosModels fromJson (Map<String, dynamic>json) => empleadosModels(
   nombre: json ['nombre'],
   apellido: json ['apellido'],
   cargo: json ['cargo'],
   telefono: json ['telefono'],
   sexo: json['sexo'],
   ubicacion: json ['ubicacion']
 );


 Map<String,dynamic> toJson() => <String,dynamic>{
   'nombre' : nombre,
   'apellido' : apellido,
   'cargo' : cargo,
   'telefono' : telefono,
   'sexo' : sexo,
   'ubicacion' : ubicacion
 };
}

