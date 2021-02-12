import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:micard/models/carte.dart';

import '../carteViste.dart';

String nom, tel, image, email, job, color, date;

class ConstruireCard extends StatelessWidget {
  final textinputnom = TextEditingController();
  final textinputtele = TextEditingController();
  final textinputimage = TextEditingController();
  final textinputjob = TextEditingController();
  final textinputemail = TextEditingController();
  final textinputcolor = TextEditingController();
  final textinputdate = TextEditingController();
  // Carte data(String _image, _nom, _job, _eMail, _tele, _color) {
  //   var carte = Carte(
  //     nomimage: _image,
  //     nom: _nom,
  //     metier: _job.text,
  //     tele: _tele.text,
  //     e_mail: _eMail.text, date: date,
  //     // colorCarte: _color,
  //   );
  //   return carte;
  // }

  // var cartee = submitData;

  //const ConstruireCard({Key key}) : super(key: key);
  //Function submit;
  var x = 20;
  @override
  Widget build(BuildContext context) {
    double height1 = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        elevation: 40,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        title: Text(
          "Create Your Card ",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 4,
          ),
        ),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: ListView(
        children: [
          SizedBox(height: height1 * .1, width: 150),
          CustomTextFliled(
            name: textinputimage,
            hint: 'image',
            icon: Icons.image,
            keybordType: TextInputType.name,
          ),
          SizedBox(height: height1 * .1, width: 150),
          CustomTextFliled(
            name: textinputnom,
            hint: 'nom',
            icon: Icons.person,
            keybordType: TextInputType.name,
          ),
          SizedBox(height: height1 * .1, width: 150),
          CustomTextFliled(
            name: textinputjob,
            hint: 'metier',
            icon: Icons.home,
            keybordType: TextInputType.name,
          ),
          SizedBox(height: height1 * .1, width: 150),
          CustomTextFliled(
            name: textinputtele,
            hint: 'tele',
            icon: Icons.phone,
            keybordType: TextInputType.number,
          ),
          SizedBox(height: height1 * .1, width: 150),
          CustomTextFliled(
            name: textinputemail,
            hint: 'e-mail',
            icon: Icons.email,
            keybordType: TextInputType.emailAddress,
          ),
          SizedBox(height: height1 * .1, width: 150),
          CustomTextFliled(
            name: textinputdate,
            hint: 'Your Date',
            icon: Icons.date_range,
            keybordType: TextInputType.datetime,
          ),
          SizedBox(height: height1 * .1, width: 150),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Colors.white,
                child: Text(
                  "Create",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    letterSpacing: 4,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                onPressed: () {
                  var carte = Carte(
                    nomimage: image,
                    nom: nom,
                    metier: job,
                    tele: tel,
                    e_mail: email,
                    date: date,
                  );

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CarteViste(carte),
                    ),
                  );
                  print("--------------Loading data----------- ");
                }),
          ),
        ],
      ),
    );
  }
}

class CustomTextFliled extends StatelessWidget {
  final String hint;
  final IconData icon;
  final TextInputType keybordType;
  final TextEditingController name;

  CustomTextFliled({
    @required this.icon,
    this.hint,
    @required this.keybordType,
    @required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        enableSuggestions: true,
        //validator: verif,
        controller: name,
        keyboardType: keybordType,
        cursorColor: Colors.blue,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.blue,
          ),
          labelStyle: TextStyle(
            color: Colors.white,
            fontSize: 24,
            letterSpacing: 4,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(50),
          ),
          hintText: hint,
        ),
        onChanged: (text) {
          if (hint == "image") {
            image = text;
          } else if (hint == "nom") {
            nom = text;
          } else if (hint == "metier") {
            job = text;
          } else if (hint == "tele") {
            tel = text;
          } else if (hint == "e-mail") {
            email = text;
          } else if (hint == "Your Date") {
            date = text;
          }
          print(text);
        },
      ),
    );
  }
}
