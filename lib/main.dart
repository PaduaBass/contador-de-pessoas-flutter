import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "contador de pessoas",
      home: Home()));
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _aux = 0;
  String _txt ="Pode Entrar";
  void _changeAux(int delta){
    setState(() {
      _aux += delta;

      if(_aux <0 ){
        _txt = "Mundo Invertido";
      }else if(_aux <= 50){
        _txt = "Fumo Produções !!";
      }else{
        _txt = "Lotado Chega Xia!";
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas $_aux" ,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(40.0),
                  child: FlatButton(
                    child: Text("+1", style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white
                    ),
                    ),
                    onPressed: (){
                      _changeAux(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(40.0),
                  child: FlatButton(
                    child: Text("-1", style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.white
                    ),
                    ),
                    onPressed: (){
                      _changeAux(-1);
                    },
                  ),
                ),
              ],
            ),
            Text(
              _txt,
              style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic, fontSize: 30.0),
            )
          ],
        )
      ],
    );
  }
}

