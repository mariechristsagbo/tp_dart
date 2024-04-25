import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /*String email;
  String password;*/
  bool acceptTerms = false;
  String _radioValue = ('');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Center(
                child: Text(
                  'Inscrivez-vous',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Votre nom',
                hintStyle: TextStyle(fontFamily: 'Montserrat'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
              onChanged: (value) {
                // Traitement de la valeur du nom si nécessaire
              },
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Votre prénom',
                hintStyle: TextStyle(fontFamily: 'Montserrat'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
              onChanged: (value) {
                // Traitement de la valeur du prénom si nécessaire
              },
            ),

            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Votre adresse e-mail',
                hintStyle: TextStyle (fontFamily: 'Montserrat'),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
              onChanged: (value) {

              },
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_outline),
                hintText: 'Votre mot de passe',
                hintStyle: TextStyle (fontFamily: 'Montserrat'),
                focusColor: Colors.teal[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22.0),
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
              onChanged: (value) {

              },
            ),


            SizedBox(height: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Votre sexe',
                    style: TextStyle(fontFamily: 'Montserrat', fontWeight: FontWeight.bold,
                    fontSize: 18),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 'M',
                      groupValue: _radioValue,
                      onChanged: (value) {
                        setState(() {
                          _radioValue = value.toString();
                        });
                      },
                      activeColor: Colors.teal[800],
                    ),
                    Text('M', style: TextStyle(fontFamily: 'Montserrat')),
                    Radio(
                      value: 'F',
                      groupValue: _radioValue,
                      onChanged: (value) {
                        setState(() {
                          _radioValue = value.toString();
                        });
                      },
                      activeColor: Colors.teal[800],
                    ),
                    Text('F', style: TextStyle(fontFamily: 'Montserrat')),
                  ],
                ),
              ],
            ),

            Row(
              children: <Widget>[
                Checkbox(
                  value: acceptTerms ?? false,
                  onChanged: (value) {
                    setState(() {
                      acceptTerms = value ?? false;
                    });
                  },
                  activeColor: Colors.teal[800],
                ),



                Text('Accepter les conditions d\'utilisations',
                style: TextStyle (
                  fontFamily: 'Montserrat'
                ),),
              ],
            ),

            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal[800],
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                ),
                onPressed: () {

                },
                child: Text(
                  "S'inscrire",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
