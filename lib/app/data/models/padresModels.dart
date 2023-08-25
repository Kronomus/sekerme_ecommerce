class parentsModels {
  final String nombre;
  final String apellido;
  final String genero;
  final String fecha_nacimiento;
  final String? email;
  final String? telefono;
  final String? direccion;


  const parentsModels({
    required this.nombre,
    required this.apellido,
    required this.genero,
    required this.fecha_nacimiento,
    this.email,
    this.telefono,
    this.direccion
  });



static parentsModels fromJson (Map<String, dynamic>json) => parentsModels(
nombre: json ['nombre'],
apellido: json ['apellido'],
genero: json ['genero'],
fecha_nacimiento: json ['fecha_nacimiento'],
email: json['email'],
telefono: json ['telefono'],
    direccion: json ['direccion']
);


Map<String,dynamic> toJson() => <String,dynamic>{
'nombre' : nombre,
'apellido' : apellido,
'genero' : genero,
'fecha_nacimiento' : fecha_nacimiento,
'email' : email,
'telefono' : telefono,
  'direccion' : direccion
};



}