import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:newsflashapp/WebViewPage.dart';
import 'package:http/http.dart' as http;
import 'package:newsflashapp/News4.dart';

Future<String> fetchNews() async{
  String apiKey="4220c18c99134d47bd0a10da3620c4c9";
  String url="https://newsapi.org/v2/top-headlines?country=in&apiKey="+apiKey;

  var response = await http.get(Uri.parse(url));
  return response.body;//JSON Data
}
class NewsPage extends StatelessWidget {

  parseNews(String response, BuildContext context){
    var mapAsData=convert.jsonDecode(response);
    List articles=mapAsData['articles'];

    List<Widget> widgets =[];

    articles.forEach((element) {
      widgets.add(
        element["urlToImage"]!=null ?
        InkWell(
            child: Image.network(element["urlToImage"]),
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> WebViewPage(url: element['url']))
              );
            }
            )
                  : Container()
      );
      widgets.add(
        ListTile(
          title: Text(element["title"]),
          subtitle: Text(element["publishedAt"]),
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context)=> WebViewPage(url: element['url']))
            );
          },
        )
      );
      widgets.add(
          Divider(
            color: Colors.blueGrey,
          )
      );
    }
    );
    return ListView(
      padding: EdgeInsets.all(8),
      children: widgets,
    );
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NewsFlash"),

        leading: Container(
          // padding: EdgeInsets.all(8),
          width: 48,
          height: 48,
          decoration: BoxDecoration(

              shape: BoxShape.circle,
              color: Colors.black12,
              image: DecorationImage(
                  image: AssetImage("logo.png"),
                  fit: BoxFit.fill
              )
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=> NewsPage4())
            );
          }, icon: Icon(Icons.keyboard_arrow_right_sharp), tooltip: "News about Main 4 countries",)
        ],
      ),
      body: FutureBuilder(
          future: fetchNews(),
          builder: (context, snapshot){
            if (snapshot.hasData) {
              return (parseNews(snapshot.data.toString(),context));
            }
            else{
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          }
      )
    );



  }
}
