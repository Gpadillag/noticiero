/*
Esta clase sirve para crear una solicitud de la api para obtener informaciòn 
y ponerlo en una lista

 */
import 'dart:convert';

import 'package:http/http.dart';
import 'package:noticiero/model/article_model.dart';

class ApiService{

  // Llave api f2a6b3a2bccc48efadc45479d57cc43b
  final apiUrl= 
  "https://newsapi.org/v2/everything?q=apple&from=2021-06-10&to=2021-06-10&sortBy=popularity&apiKey=f2a6b3a2bccc48efadc45479d57cc43b";
  Future<List<Article>> getArticle() async{
    Response res = await get(apiUrl);

    if(res.statusCode == 200 ){ // 200 es chido en http
      Map<String, dynamic> json = jsonDecode(res.body);
      List<dynamic> body = json['articles'];
    // Lista de articulos
      List<Article> articles = 
      body.map((dynamic item) => Article.fromJson(item)).toList();


      return articles;

    }else{
      throw ("No se puede obtener el articulo");
    }
  }

}

//https://newsapi.org/v2/everything?q=apple&from=2021-06-08&to=2021-06-08&sortBy=popularity&apiKey=f2a6b3a2bccc48efadc45479d57cc43b