import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:projeto_diana/drawers/drawer.dart';

class Home extends StatelessWidget {
  BoxDecoration _boxDecoration1 = new BoxDecoration(
      color: Color.fromRGBO(255, 144, 82, 1.0),
      borderRadius: BorderRadius.all(Radius.circular(40.0)));
  BoxDecoration _boxDecoration2 = new BoxDecoration(
      color: Color.fromRGBO(255, 186, 92, 1.0),
      borderRadius: BorderRadius.all(Radius.circular(40.0)));
  TextStyle _estilo_texto_botao = TextStyle(
      fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 240, 237, 1.0),
      appBar: AppBar(
        title: Text("Diana"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 144, 82, 1.0),
      ),
      drawer: DrawerCustomizado(),
      body: Column(
        children: <Widget>[
          CarouselSlider(
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 1),
            enlargeCenterPage: true,
            items: <Widget>[
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.pink,
              ),
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.black,
              )
            ],
          ),
          Divider(),
          Divider(),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  decoration: _boxDecoration1,
                  width: 150,
                  height: 90,
                  child: Center(child:
                  Text("Cadastrar Pet", style: _estilo_texto_botao,)),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  decoration: _boxDecoration2 ,
                  width: 150,
                  height: 90,
                  child: Center(child:
                  Text("Localizar Pet", style: _estilo_texto_botao,)),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  width: 150,
                  height: 90,
                  decoration: _boxDecoration2,
                  child: Center(child:
                  Text("Pista", style: _estilo_texto_botao,)),

                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Container(
                  width: 150,
                  height: 90,
                  decoration: _boxDecoration1,
                  child: Center(child:
                  Text("Dicas", style: _estilo_texto_botao,)),

                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
