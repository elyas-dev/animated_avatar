import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class LiveScreen extends StatelessWidget {
  const LiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: Text('پخش زنده'),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Container(
              width: double.infinity,
              child: AvatarGlow(
                glowColor: Colors.red,
                endRadius: 200.0,
                duration: Duration(milliseconds: 1500),
                repeat: true,
                showTwoGlows: true,
                repeatPauseDuration: Duration(milliseconds: 50),
                shape: BoxShape.circle,
                animate: true,
                curve: Curves.fastOutSlowIn,
                child: Material(
                  elevation: 8.0,
                  shape: CircleBorder(),
                  color: Colors.transparent,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.red, width: 5)),
                        child: CircleAvatar(
                          radius: 100.0,
                          backgroundImage:
                              AssetImage('assets/images/person.jpg'),
                        ),
                      ),
                      Container(
                        width: 120,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            'پخش زنده',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
