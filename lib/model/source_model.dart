//Clase modelo json
class Source{
  String id;
  String name;

//Bob
  Source({this.id, 
          this.name});

  
  factory Source.fromJson(Map<String, dynamic> json){
    return Source(
                  id:   json['id'], 
                  name: json['name']
                );
  }
}

/*
factory puede devolver valor desde la caché o desde una instancia de un subtipo que no tiene
acceso a una palabra reservada y son similares a metodos estaticos y retorna su misma clase

 */