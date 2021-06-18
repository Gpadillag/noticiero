import 'package:noticiero/model/source_model.dart';

class Article{
  Source source;          String author;      String title;       String description;
  String url;             String urlToImage;  String publishedAt; String content;
//Bob
      Article({
  this.source,            this.author,        this.title,         this.description,
  this.url,               this.urlToImage,    this.publishedAt,   this.content
});
//Mapeo funcion para lista
  factory Article.fromJson(Map<String, dynamic> json){
    return Article(
    source:       Source.fromJson(json['source']),
      author:       json['author'] as String,
      title:        json['title'] as String,
      description:  json['description'] as String,
      url:          json['url'] as String,
      urlToImage:   json['urlToImage'] as String,
      publishedAt:  json['publishedAt'] as String,
      content:      json['content'] as String,

    );
  }

}


/*
import 'package:flutter/material.dart';
import 'package:noticiero/model/article_model.dart';

Widget titulo_model(Article article){
  return Container(
    margin: EdgeInsets.all(12.0),
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: Colors.white, borderRadius: BorderRadius.circular(18.0),
      boxShadow: [BoxShadow(
          color: Colors.black54,
          blurRadius: 5.0
      )]
    ),

    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0)
        ),
      ),
      SizedBox(height: 8.0),
      Container(decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Text(article.source.name)
      ),
      SizedBox(height: 8.0,),
      Text(article.title, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0))

    ],),
  );
}

 */

