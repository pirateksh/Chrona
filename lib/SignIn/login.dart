import 'package:chrona_1/Activities/home.dart';
import 'package:flutter/material.dart';
import 'state_widget.dart';
import 'package:chrona_1/UserInfo/state.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Google Login'),

      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                  onPressed: () { if(StaticState.user==null)StateWidget.of(context).signInWithGoogle();Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));},
                  padding: EdgeInsets.only(top: 3.0, bottom: 3.0, left: 3.0),
                  color: const Color(0xFFFFFFFF),
                  child: new Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Image.asset(
                        'images/g1.jpg',
                        height: 40.0,
                      ),
                      new Container(
                          padding: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: new Text(
                            "Sign in with Google",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}