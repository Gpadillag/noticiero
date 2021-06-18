import 'package:flutter/material.dart';
import 'package:noticiero/model/article_model.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:intl/intl.dart';

class ArticuloPage extends StatelessWidget {
  final Article article;
  DateTime _currentdate = new DateTime.now();

  

  ArticuloPage({this.article});
  @override
  Widget build(BuildContext context) {
    String _formattedate = new DateFormat.yMMMd().format(_currentdate);

    
    return Scaffold(
      appBar: AppBar(
        title: Text("Traido por: " + article.source.name, style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.black
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
          height: 200.0,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(article.urlToImage),
              fit: BoxFit.cover
            ),
          ),
        ),
      
        Container(decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Colors.blue,
            blurRadius: 1.0
        )],
          
         borderRadius: BorderRadius.circular(10.0),
          
        ),
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(5.0),
        child: Text(article.description, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0, color: Colors.white
        )),
        
        
        
        ),


        
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    SignInButton(
  Buttons.Reddit,
  text: "Compartir con Reddit",
  onPressed: () {},
),

SignInButton(
  Buttons.Facebook,
  text: "Compartir con Facebook",
  onPressed: () {},
),
  ],
),


Row(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Container(decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10.0),
          
        ),
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(5.0),
        child: Text("Autor: "+article.author, style: TextStyle(color: Colors.black, fontSize: 15.0, fontStyle: FontStyle.italic),)
        ),

       

       Container(decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(10.0),
        ),
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(5.0),
        child: Text("Fecha de publicación: "+article.publishedAt, style: TextStyle(color: Colors.black, fontSize: 15.0 ,fontStyle: FontStyle.italic),)
        ),

      
  ],
),
Container(decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10.0),
                
              ),
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(5.0),
              child: Text("Obtenido de: "+article.url, style: TextStyle(color: Colors.black, fontSize: 15.0 ,fontStyle: FontStyle.italic),)
              ),

      

      ],),

  
      



    );
  }
}


/*
   //Text(article.description),
        Text("Información obtenida de: " + article.url + 
        "\n\nFecha de publicación: " + article.publishedAt),
        Text("Nota Elaborada por: " + article.author)

 */