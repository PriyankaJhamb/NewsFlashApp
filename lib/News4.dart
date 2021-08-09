// https://newsapi.org/v2/top-headlines?country=in&apiKey=4220c18c99134d47bd0a10da3620c4c9
// https://newsapi.org/v2/top-headlines?country=ca&apiKey=4220c18c99134d47bd0a10da3620c4c9
// https://newsapi.org/v2/top-headlines?country=au&apiKey=4220c18c99134d47bd0a10da3620c4c9
// https://newsapi.org/v2/top-headlines?country=jp&apiKey=4220c18c99134d47bd0a10da3620c4c9


import 'package:flutter/material.dart';
import 'package:newsflashapp/newsCountrywise.dart';
class NewsPage4 extends StatefulWidget {
  const NewsPage4({Key? key}) : super(key: key);

  @override
  _NewsPage4State createState() => _NewsPage4State();
}

class _NewsPage4State extends State<NewsPage4> {
  @override
  int index=0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NewsFlash"),
        backgroundColor: Colors.blue,
        leading: Container(
          height: 18,
          width: 28,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.blue,
            image: DecorationImage(
                image: AssetImage("logo.png"),
                fit: BoxFit.fill
            ),
          ),
        ),
      ),
      body: NewsPage(ID: index),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          //0
          BottomNavigationBarItem(
              icon: Container(
                // padding: EdgeInsets.all(8),
                width: 30,
                height: 30,
                decoration: BoxDecoration(

                    shape: BoxShape.circle,
                    color: Colors.black12,
                    image: DecorationImage(
                        image: AssetImage("in.png"),
                        fit: BoxFit.fill
                    )
                ),
              ),
              label: "INDIA",
              backgroundColor: Colors.blue
          ),
          //1
          BottomNavigationBarItem(
              icon: Container(
                // padding: EdgeInsets.all(8),
                width: 30,
                height: 30,
                decoration: BoxDecoration(

                    shape: BoxShape.circle,
                    color: Colors.black12,
                    image: DecorationImage(
                        image: AssetImage("ca.png"),
                        fit: BoxFit.fill
                    )
                ),
              ),
              label: "CANADA",
              backgroundColor: Colors.blue
          ),
          //2
          BottomNavigationBarItem(
              icon: Container(
                // padding: EdgeInsets.all(8),
                width: 30,
                height: 30,
                decoration: BoxDecoration(

                    shape: BoxShape.circle,
                    color: Colors.black12,
                    image: DecorationImage(
                        image: AssetImage("au.png"),
                        fit: BoxFit.fill
                    )
                ),
              ),
              label: "AUSTRALIA",
              backgroundColor: Colors.blue
          ),
          //3
          BottomNavigationBarItem(
              icon: Container(
                // padding: EdgeInsets.all(8),
                width: 30,
                height: 30,
                decoration: BoxDecoration(

                    shape: BoxShape.circle,
                    color: Colors.black12,
                    image: DecorationImage(
                        image: AssetImage("gb.png"),
                        fit: BoxFit.fill
                    )
                ),
              ),
              label: "UNITED KINGDOM",
              backgroundColor: Colors.blue
          )

        ],
        currentIndex: index,
        selectedFontSize: 12,
        selectedItemColor: Colors.yellow,
        onTap: (idx){
          setState(() {
            index=idx;
          });
        },
      ),
    );
  }
}
