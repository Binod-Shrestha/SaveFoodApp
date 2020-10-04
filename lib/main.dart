import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SaveFood App',
      theme: ThemeData(
               primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'SaveFood Login'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
       final emailField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Username:",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
      final appName = Text("SaveFood",style:appTitleStyle());

    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
        body: SingleChildScrollView(
          child: Center(

            child: Container(
              decoration: BoxDecoration(

                image: DecorationImage(
                  image: AssetImage("assets/1.jpeg"),
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
                  fit: BoxFit.cover,
                ),
              ),
             // color: Colors.white,
                            child: Padding(
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                       child: SizedBox(
                        height: 155.0,
                        child: Image.asset(
                          "assets/rbc.png",
                          height: 80.0,
                          width: 80.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    appName,
                    SizedBox(height: 45.0),
                    emailField,
                    SizedBox(height: 25.0),
                    passwordField,
                    SizedBox(
                      height: 35.0,
                    ),
                    loginButon,
                    SizedBox(
                      height: 15.0,
                    ),
                    SizedBox(height: 25.0),
                    buildLabel("Forgot Password?",Colors.blue),
                SizedBox(height: 25),
                    buildLabel("Not a member yet?",Colors.black),
                SizedBox(height: 25),
                    buildLabel("Sign up here",Colors.blue)
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }


  Text buildLabel(String name, Color fontColor) => Text(name, style: TextStyle(color:fontColor),);

  TextStyle appTitleStyle() => TextStyle(color: Colors.red,fontSize: 30.0, fontWeight: FontWeight.bold);
}