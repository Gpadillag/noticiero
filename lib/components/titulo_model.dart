import 'package:flutter/material.dart';
import 'package:noticiero/model/article_model.dart';
import 'package:noticiero/pages/detalle_articulo.dart';

Widget titulo_model(Article article, BuildContext context){
  return InkWell(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => ArticuloPage(article: article,
      )));
    },
      child: Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.white, borderRadius: BorderRadius.circular(18.0),
        boxShadow: [BoxShadow(
            color: Colors.red,
            blurRadius: 5.0
        )]
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
        Container(
          height: 300.0,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(article.urlToImage),
              fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(8.0)
          ),
        ),
        SizedBox(height: 8.0),
        Container(decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.all(10.0),
        child: Text(article.source.name, style: TextStyle(color: Colors.black, fontSize: 15.0 ),)
        ),
        SizedBox(height: 8.0,),
        Text(article.title, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0)
        )

      ],),
    ),
  );
}
