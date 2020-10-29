import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:sidebar_animation/sidebar/sidebar_layout.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isShowPassWord = false;
  String _email, _password;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("assets/ICTlogo-min.png"), context);
    return Scaffold(
      backgroundColor:Colors.grey[600],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Center(
              child: Form(
                key: _formkey,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 100),

                    //login
                    Container(
                      child: Image(
                      image: AssetImage("assets/Jpura.png"), height: 200, width: 200,
                      )
                    ),

                    SizedBox(height: 50),
                    //email
                    Container(
                      child: TextFormField(
                        // ignore: missing_return
                        validator: (input) {
                          if (input.isEmpty) {
                            return 'Please Type an email';
                          }
                        },
                        onSaved: (input) => _email = input,
                        decoration: InputDecoration(
                          icon: new Icon(
                            Icons.mail,
                            color:Color.fromRGBO(30, 129, 184, 1),
                          ),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              fontSize: 14, color: Colors.grey.shade400),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              )),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),

                    // password
                    Container(
                      child: TextFormField(
                        // ignore: missing_return
                        validator: (input) {
                          if (input.length < 6) {
                            return 'Please Provide an  valid Password!';
                          }
                        },
                        onSaved: (input) => _password = input,
                        decoration: InputDecoration(
                            icon:Icon(
                              Icons.lock,
                              color: Color.fromRGBO(30, 129, 184, 1),
                            ),
                            suffixIcon:IconButton(
                                icon: Icon(
                                    _isShowPassWord
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Color.fromRGBO(30, 129, 184, 1),
                                ),
                              onPressed: showPassWord,
                            ),

                            labelText: 'Password',
                            labelStyle: TextStyle(
                                fontSize: 14, color: Colors.grey.shade400),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey.shade300,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  color: Colors.blue,
                                ))),
                        obscureText: !_isShowPassWord,
                      ),
                    ),

                    SizedBox(height:20),
                    Center(
                     child: RaisedButton(
                       onPressed:signIn,
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
                       padding: EdgeInsets.all(0.0),
                       child: Ink(
                         decoration: BoxDecoration(
                             gradient: LinearGradient(colors: [Color.fromRGBO(30,129, 184, 1),
                               Color.fromRGBO(31, 86, 148, 1)],
                             ),
                             borderRadius: BorderRadius.circular(30.0)
                         ),
                         child: Container(
                           constraints: BoxConstraints(maxWidth: 200.0, minHeight: 50.0),
                           alignment: Alignment.center,
                           child: Text(
                             "Login",
                             textAlign: TextAlign.center,
                             style: TextStyle(
                                 color: Colors.white
                             ),
                           ),
                         ),
                       ),
                     ),
                    ),

                    SizedBox(height:70),
                    Text('Copyright ©2020, All Rights Reserved.',style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0, color: Colors.white),),
                    Text('Powered by VTECH',style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0,color: Colors.white),),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void showPassWord() {
    setState(() {
      _isShowPassWord = !_isShowPassWord;
    });
  }


  Future<void> signIn() async {
    final formState = _formkey.currentState;
    if (formState.validate()) {
      formState.save();
      try {
        AuthResult user = await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SideBarLayout()));
      } catch (e) {
        print(e.message);
      }
    }
  }
}
