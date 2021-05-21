import 'dart:ui';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        elevation: 0.0,
        title: Text('Plan Standart'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/asset/fondo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Row(
            children: <Widget>[
              Container(
                width: 380,
                height: 500,
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pinkAccent, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        child: Text(
                          'Standard Plan',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    //subText
                    Container(
                      child: Text(
                        'Planes para pequenos comercios',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    //Circle Avatar
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                          width: 150.0,
                          height: 130.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.pink,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  '\u00241999',
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    color: Color(0xffffffff),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'por mes',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ],
                          )),
                    ),

                    DataTable(
                      columns: <DataColumn>[
                        DataColumn(
                          label: Text(''),
                        ),
                        DataColumn(
                          label: Text(''),
                        ),
                      ],
                      rows: <DataRow>[
                       
                        DataRow(cells: <DataCell>[
                          DataCell(
                            myRowDataIcon(FontAwesomeIcons.users, "FTP users"),
                          ),
                          DataCell(
                            Text(
                              '50',
                              style: TextStyle(
                                color: Colors.purpleAccent,
                              ),
                            ),
                          ),
                        ]),
                        DataRow(cells: <DataCell>[
                          DataCell(
                            myRowDataIcon(
                                FontAwesomeIcons.mobile, "Aplicativos"),
                          ),
                          DataCell(
                            Text(
                              '2',
                              style: TextStyle(
                                color: Colors.purpleAccent,
                              ),
                            ),
                          ),
                        ]),
                        DataRow(cells: <DataCell>[
                          DataCell(
                            myRowDataIcon(
                                FontAwesomeIcons.phone, "Soporte Tecnico"),
                          ),
                          DataCell(
                            Text(
                              'SI',
                              style: TextStyle(
                                color: Colors.purpleAccent,
                              ),
                            ),
                          ),
                        ]),
                        DataRow(cells: <DataCell>[
                          DataCell(
                            myRowDataIcon(
                                FontAwesomeIcons.envelope, "Soporte en Whatsapp"),
                          ),
                          DataCell(
                            Text(
                              'SI',
                              style: TextStyle(
                                color: Colors.purpleAccent,
                              ),
                            ),
                          ),
                        ],),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 350.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                    color: Colors.pink,
                    fontSize: 30.0,
                    fontFamily: 'Bobbers',
                  ),
                  child: AnimatedTextKit(totalRepeatCount: 2, animatedTexts: [
                    TyperAnimatedText('De la oprtunida a sus clientes ,',
                        speed: Duration(milliseconds: 100)),
                    TyperAnimatedText('De conocer sus productos,'),
                    TyperAnimatedText('Entre en el comercio Virtual',
                        speed: Duration(milliseconds: 100)),
                    TyperAnimatedText('Comience ahora !!!'),
                  ]),
                ),
              ),
              Container(
                width: 200,
                height: 100,
                margin: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.pinkAccent, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child:Text(''),



              ),
            ],
          ),
        ),
      ),
    );
  }
}

ListTile myRowDataIcon(IconData iconVal, String rowVal) {
  return ListTile(
    leading: Icon(iconVal, color: new Color(0xff4a14ff)),
    title: Text(
      rowVal,
      style: TextStyle(
        color: Colors.purple,
      ),
    ),
  );
}
