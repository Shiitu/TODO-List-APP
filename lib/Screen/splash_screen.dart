import 'package:flutter/material.dart';
import 'package:todo/Screen/prelogin.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void initState() {
    super.initState();
    _navigatetologin();
  }
   _navigatetologin() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Prelogin()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 300,),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "image/logo.png",
                width: 100,
                height: 100,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Text(
                "ToDo",
                style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Let's Do It")
            ],
          ),
          // SizedBox(height: 15,),
          Column(
            
            children: [
              Padding(padding: EdgeInsets.all(80)),
              LoadingAnimationWidget.inkDrop(color: Colors.blue, size: 40)
            ],
          ),
          SizedBox(height: 50,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Version 1.0"
              )
            ],
          )
        ],

      ),
      ),
    );
  }
}
