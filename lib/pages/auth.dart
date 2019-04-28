import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AuthPage();
  }
}

class _AuthPage extends State<AuthPage> {
  String emailValue;
  String passwordValue;
  bool _acceptTerms = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Authenticate'),
        ),
        body: Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.dstATop),
                    image: AssetImage('assets/background.jpg'),
                    fit: BoxFit.fill)),
            child: Center(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email',
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.lightBlueAccent,
                        )),
                    onChanged: (String value) {
                      setState(() {
                        emailValue = value;
                      });
                    },
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: 'Password',
                        prefixIcon: Icon(
                          Icons.vpn_key,
                          color: Colors.lightBlueAccent,
                        )),
                    onChanged: (String value) {
                      setState(() {
                        passwordValue = value;
                      });
                    },
                  ),
                  SizedBox(height: 10.0),
                  SwitchListTile(
                    value: _acceptTerms,
                    onChanged: (bool value) {
                      setState(() {
                        _acceptTerms = value;
                      });
                    },
                    title: Text('Accept Terms'),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    height: 40.0,
                    width: 100.0,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.lightBlueAccent,
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, './');
                      },
                      child: Text('Login'),
                    ),
                  )
                ],
              ),
            ))));
  }
}
