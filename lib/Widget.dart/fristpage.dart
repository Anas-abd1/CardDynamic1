import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:micard/Widget.dart/ConstruireCard.dart';
//import 'package:micard/carteViste.dart';

class FristPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width1 = MediaQuery.of(context).size.width;
    double height1 = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.home,
          size: 40,
          color: Colors.white,
        ),
        backgroundColor: Colors.lightBlueAccent,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "My Card",
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
          Container(
            height: height1 - 60,
            width: width1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Acceuil.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: FlatButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    "Create",
                    style: TextStyle(
                      color: Colors.teal,
                      letterSpacing: 4,
                      fontSize: 24,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConstruireCard(),
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
