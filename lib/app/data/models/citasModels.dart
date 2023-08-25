class citasModels{
  final String fecha_hora;


  const citasModels({
    required this.fecha_hora  ,



  });

  static citasModels fromJson (Map<String, dynamic>json) => citasModels(
      fecha_hora: json ['fecha_hora'],

  );


  Map<String,dynamic> toJson() => <String,dynamic>{
    'fecha_hora' : fecha_hora,
  };
}

