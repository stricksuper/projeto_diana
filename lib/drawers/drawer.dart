import 'package:flutter/material.dart';

class DrawerCustomizado extends StatelessWidget {
  TextStyle _estilo_texto = TextStyle(
    fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromRGBO(255, 186, 92, 1.0)),
              accountEmail: Text("teste@hotmail.com", style: TextStyle(fontWeight: FontWeight.bold),),
              accountName: Text("Carlos da Silva", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              currentAccountPicture: CircleAvatar(backgroundImage: Image.asset("assets/sasuke.jpg").image,
              ),
              otherAccountsPictures: <Widget>[
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: (){
                    print("editar");
                  },
                ),
              ],
              margin: EdgeInsets.all(0.0),
            ),
            Container(
              color: Color.fromRGBO(255, 144, 82, 1.0),
              height: 500.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                    child: InkWell(child: Text("Meus Pets",
                          style: _estilo_texto,
                        ),
                          onTap: (){
                            print("SADASDASDSDSAD");
                          },
                        ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 45, 0, 0),
                    child: Text("Minhas Dicas",
                      style: _estilo_texto,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 45, 0, 110),
                    child: Text("Menssagens",
                      style: _estilo_texto,
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    color: Colors.white.withOpacity(0.7),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 25, 0, 0),
                    child: Text("Configurações",
                      style: _estilo_texto,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
                    child: Text("Sobre",
                      style: _estilo_texto,
                    ),
                  ),

                ],
              ),
            )

          ],

        )
    );
  }
}

