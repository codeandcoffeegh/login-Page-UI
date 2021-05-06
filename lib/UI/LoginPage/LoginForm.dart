import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var container = Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      height: 500,
      width: 630,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Column(children: [
            Container(
              height: 500,
              width: 320,
              decoration: new BoxDecoration(
                borderRadius: BorderRadiusDirectional.circular(5),
                image: new DecorationImage(
                    image: new AssetImage("images/background.jpeg"),
                    fit: BoxFit.cover),
              ),
            ),
          ]),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70,
              ),
              Text('Sign In',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w200,
                      color: Colors.yellowAccent[400])),
              SizedBox(
                height: 20,
              ),
              Text('Email Address',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w100,
                      color: Colors.black87)),
              SizedBox(height: 10),
              Container(
                width: 250,
                height: 40,
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: new BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(30),
                  border: new Border.all(
                    color: Colors.grey.shade300,
                    width: 0,
                  ),
                ),
                child: new TextField(
                  textAlign: TextAlign.left,
                  decoration: new InputDecoration(
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text('Password',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w100,
                      color: Colors.black87)),
              SizedBox(height: 10),
              Container(
                width: 250,
                height: 40,
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                decoration: new BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(30),
                  border: new Border.all(
                    color: Colors.grey.shade300,
                    width: 0,
                  ),
                ),
                child: new TextField(
                  obscureText: true,
                  textAlign: TextAlign.left,
                  decoration: new InputDecoration(
                    suffixIcon: Icon(FontAwesomeIcons.eyeSlash),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              GestureDetector(
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFFDEE035),
                            Color(0xFFA2C56B),
                            Color(0xFF6A910E),
                          ])),
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new RichText(
                      text: new TextSpan(
                        children: [
                          new TextSpan(
                            text: "Don't have an account, ",
                            style: new TextStyle(color: Colors.black87),
                          ),
                          new TextSpan(
                              text: 'Sign Up',
                              style: new TextStyle(
                                  color: Colors.yellowAccent[400]),
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () {
                                  launch('https://www.google.com');
                                })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
    return container;
  }
}
