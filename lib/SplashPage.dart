import 'dart:ui';

import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {

  navigatorToHome( BuildContext context)
  {
    Future.delayed(
        Duration(seconds: 3),
            (){
          //Navigator.pushNamed(context, '/home');
          Navigator.pushReplacementNamed(context, '/news');
        }
    );
  }

  @override
  Widget build(BuildContext context) {

    navigatorToHome(context);

    return Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("logo.png", width: 48,  height: 48,),
                SizedBox(height: 8),
                Text("NewsFlash", style: TextStyle(color:Colors.yellow, fontSize: 24)),
                Divider(),
                SizedBox(height: 4),
                Text("Latest News in shorts", style: TextStyle(color: Colors.yellowAccent, fontSize: 18),),

              ],
            )
        )
    );
  }
}
