import 'package:flutter/material.dart';
import 'package:fooddelivery_app/pages/home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 10), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ));
      //   checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          color: Color(0xFF27DEBF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Center(
                      child: Image(image: AssetImage('assests/img/foodgo.png')),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Center(
                      child: Container(
                          child: CircularProgressIndicator(
                        backgroundColor: Colors.white,
                      )),
                    ),
                    Expanded(
                      child: Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(0),
                          child: Center(
                            child: Image(
                                image: AssetImage('assests/img/epic.png')),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
