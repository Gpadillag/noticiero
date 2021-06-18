import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:noticiero/components/titulo_model.dart';
import 'package:noticiero/service/api_service.dart';
import 'generated/l10n.dart';
import 'model/article_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(

      home: HomePage(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
            ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ApiService client = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Noticiero App", style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.black,
      ),

      

    //Llamar api con futurebuilder
     body: FutureBuilder(
       future: client.getArticle(),
      builder: (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
        if(snapshot.hasData){ //Evaluar respuesta si hay o no
          List<Article> articles = snapshot.data;
          return ListView.builder(
            //Crea lista
            itemCount: articles.length, 
            itemBuilder: (context,index)
            => titulo_model(articles[index],context),
          );
        }

        return Center(
          child: CircularProgressIndicator() ,);
        
      },
     
     ),
      
    );
  }
}
