import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:micard/Widget.dart/ConstruireCard.dart';
import 'package:micard/models/carte.dart';

class CarteViste extends StatelessWidget {
  Carte data;
  // String nom, job, email, tele, image;
  //String  x=data.colorCarte;
  String path = "assets/images/";
  CarteViste(
    @required this.data,
  );

  //const Card({Key key}) : super(key//: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "My card",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
            width: 150,
          ),
          Center(
            child: CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage(path + data.nomimage),
            ),
          ),
          SizedBox(
            height: 40,
            width: 150,
          ),
          Center(
            child: Text(
              data.nom,
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 4,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(
            height: 10,
            width: 150,
          ),
          Center(
            child: Text(
              data.metier,
              style: TextStyle(
                fontSize: 19,
                letterSpacing: 4,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          SizedBox(
            height: 10,
            width: 150,
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: ListTile(
              title: Text(
                data.e_mail,
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 4,
                ),
              ),
              leading: Icon(
                Icons.email,
                color: Colors.teal,
              ),
            ),
          ),
          SizedBox(
            height: 10,
            width: 150,
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: ListTile(
              title: Text(
                data.tele,
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 4,
                ),
              ),
              leading: Icon(
                Icons.phone,
                color: Colors.teal,
              ),
            ),
          ),
          SizedBox(
            height: 10,
            width: 150,
          ),
          Card(
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: ListTile(
              title: Text(
                data.date,
                style: TextStyle(
                  color: Colors.teal,
                  fontSize: 25,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 4,
                ),
              ),
              leading: Icon(
                Icons.date_range,
                color: Colors.teal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
