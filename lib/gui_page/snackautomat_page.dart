import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:snackautomat/controller/_register_controller.dart';
// ignore_for_file: prefer_const_constructors

/// Static becomes dynamic
class AutomatScreen extends StatefulWidget {
  @override
  _AutomatScreenState createState() => _AutomatScreenState();
}

class _AutomatScreenState extends State<AutomatScreen> {
  final IRegisterController _con = IRegisterController();

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreenAccent,
          title:
              Text('Vegan Snack-O-Mat!', style: TextStyle(color: Colors.green)),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green[900],
                  child: Container(
                    color: Colors.black38,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              child: GridView.count(
                                crossAxisCount: 3,
                                children: [
                                  _snackContainer(
                                      context,
                                      'https://cdn.shopify.com/s/files/1/0015/8882/2075/products/1033_1024x1024@2x.jpg?v=1523789645',
                                      10,
                                      0),
                                  _snackContainer(
                                      context,
                                      'https://cdn.shopify.com/s/files/1/0015/8882/2075/products/1033_1024x1024@2x.jpg?v=1523789645',
                                      11,
                                      0),
                                  _snackContainer(
                                      context,
                                      'https://cdn.shopify.com/s/files/1/0015/8882/2075/products/1033_1024x1024@2x.jpg?v=1523789645',
                                      12,
                                      0),
                                  _snackContainer(
                                      context,
                                      'https://gastronomie-rhein-main.de/wp-content/uploads/2016/10/Dose-Sweet-Paprika.png',
                                      20,
                                      150),
                                  _snackContainer(
                                      context,
                                      'https://www.manner.com/sites/default/files/2019-10/website_bilder_tp_glow_0.png',
                                      21,
                                      65),
                                  _snackContainer(
                                      context,
                                      'https://img.rewe-static.de/4578503/26892520_digital-image.png',
                                      22,
                                      200),
                                  _snackContainer(
                                      context,
                                      'https://img.rewe-static.de/3137285/31505382_digital-image.png',
                                      30,
                                      60),
                                  _snackContainer(
                                      context,
                                      'https://img.rewe-static.de/3137237/31505381_digital-image.png',
                                      31,
                                      60),
                                  _snackContainer(
                                      context,
                                      'https://tacs.b-cdn.net/696-large_default/skittles-wild-berry.jpg',
                                      32,
                                      60),
                                  _snackContainer(
                                      context,
                                      'https://www.knabbershop.de/media/image/thumbnail/pp_30g_2013_packshot5efda6507afca_720x600.png',
                                      40,
                                      60),
                                  _snackContainer(
                                      context,
                                      'https://www.star-trier.de/data/product/big/ungarisch_packshot(1).png',
                                      41,
                                      75),
                                  _snackContainer(
                                      context,
                                      'https://img.rewe-static.de/7975855/31704418_digital-image.png',
                                      42,
                                      80),
                                  _snackContainer(
                                      context,
                                      'https://cdn.webshopapp.com/shops/263536/files/294757341/600x600x2/freeway-freeway-cola.jpg',
                                      50,
                                      30),
                                  _snackContainer(
                                      context,
                                      'https://neu-getraenke-food.de/wp-content/uploads/2020/05/neu-getraenke-gro%C3%9Fhandel_fitlove__produkte_effect-pfandfrei-033l-can.png',
                                      51,
                                      90),
                                  _snackContainer(
                                      context,
                                      'https://lieferlimo.com/wp-content/uploads/LL0155.png',
                                      52,
                                      180),
                                  _snackContainer(
                                      context,
                                      'https://cdn.shopify.com/s/files/1/0015/8882/2075/products/1033_1024x1024@2x.jpg?v=1523789645',
                                      60,
                                      0),
                                  _snackContainer(
                                      context,
                                      'https://cdn.shopify.com/s/files/1/0015/8882/2075/products/1033_1024x1024@2x.jpg?v=1523789645',
                                      61,
                                      0),
                                  _snackContainer(
                                      context,
                                      'https://cdn.shopify.com/s/files/1/0015/8882/2075/products/1033_1024x1024@2x.jpg?v=1523789645',
                                      62,
                                      0),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          // ignore: avoid_redundant_argument_values
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(25.0),
                            child: Container(
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                // ignore: avoid_redundant_argument_values
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen[100],
                    border: Border(
                      left: BorderSide(),
                    ),
                  ),
                  child: Flex(
                    direction: Axis.vertical,
                    children: [
                      Flexible(
                        // ignore: avoid_redundant_argument_values
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            color: Colors.green[900],
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                border: Border(
                                  bottom: BorderSide(width: 3),
                                  left: BorderSide(
                                    width: 3,
                                  ),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Happy-Owl',
                                  style: TextStyle(
                                    color: Colors.amber,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            color: Colors.green[900],
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                border: Border(
                                  bottom: BorderSide(width: 3),
                                  left: BorderSide(
                                    width: 3,
                                  ),
                                ),
                              ),
                              padding: EdgeInsets.all(3),
                              child: Flex(
                                direction: Axis.vertical,
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        color: Colors.black,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: _message(
                                                  context, _con.message),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        color: Colors.black,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              child: _buildLED(context, 'Preis',
                                                  _con.displayPrice),
                                            ),
                                            Expanded(
                                              child: _buildLED(context,
                                                  'Eingabe', _con.displayDebit),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        color: Colors.black,
                                        child: Padding(
                                          padding: const EdgeInsets.all(3),
                                          child: GridView.count(
                                            crossAxisCount: 3,
                                            children: [
                                              _controlPanel(context,
                                                  Colors.lightGreenAccent, '7'),
                                              _controlPanel(context,
                                                  Colors.lightGreenAccent, '8'),
                                              _controlPanel(context,
                                                  Colors.lightGreenAccent, '9'),
                                              _controlPanel(context,
                                                  Colors.lightGreenAccent, '4'),
                                              _controlPanel(context,
                                                  Colors.lightGreenAccent, '5'),
                                              _controlPanel(context,
                                                  Colors.lightGreenAccent, '6'),
                                              _controlPanel(context,
                                                  Colors.lightGreenAccent, '1'),
                                              _controlPanel(context,
                                                  Colors.lightGreenAccent, '2'),
                                              _controlPanel(context,
                                                  Colors.lightGreenAccent, '3'),
                                              _controlPanel(context,
                                                  Colors.lightGreenAccent, '0'),
                                              _controlPanel(
                                                  context, Colors.red, 'R'),
                                              _controlPanel(
                                                  context, Colors.amber, 'C'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: InkWell(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.grey),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50),
                                                      color: Colors.black,
                                                    ),
                                                    child: SizedBox(
                                                      height: double.infinity,
                                                      width: double.infinity,
                                                      child: FittedBox(
                                                        child: Text(
                                                          'A',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    setState(() {
                                                      _con.adminMode();
                                                    });
                                                  },
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    border: Border.all(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                  child: SizedBox(
                                                    height: double.infinity,
                                                    child: FittedBox(
                                                      child: Text(
                                                        'Rückgeld',
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 5,
                        child: Container(
                          child: GridView.count(
                            crossAxisCount: 2,
                            children: [
                              _userCoins(context, Colors.grey[300], 200, '2€'),
                              _userCoins(context, Colors.grey[300], 100, '1€'),
                              _userCoins(
                                  context, Colors.orange[300], 50, '50c'),
                              _userCoins(
                                  context, Colors.orange[300], 20, '20c'),
                              _userCoins(
                                  context, Colors.orange[300], 10, '10c'),
                              _userCoins(
                                  context, Colors.deepOrange[900], 5, '5c'),
                              _userCoins(
                                  context, Colors.deepOrange[900], 2, '2c'),
                              _userCoins(
                                  context, Colors.deepOrange[900], 1, '1c'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );

  Widget _snackContainer(
          BuildContext context, String link, int productID, int productPrice) =>
      InkWell(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(),
              ),
              child: Stack(
                children: [
                  Image.network(link,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover),
                  Positioned(
                    child: Container(
                      color: Color.fromRGBO(155, 255, 255, 0.5),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      color: Colors.black87,
                      padding: EdgeInsets.all(3),
                      child: Center(
                        child: Text(
                          '$productPrice',
                          style: TextStyle(
                            color: Colors.amber,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        onTap: () {
          setState(() {
            _con.selectProduct(productID, productPrice);
          });
        },
      );

  Widget _controlPanel(BuildContext context, Color? color, String sign) =>
      InkWell(
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Center(
                child: Text(
                  sign,
                  style: TextStyle(color: color),
                ),
              ),
            ),
          ),
          onTap: () {
            setState(() {});
          });

  Widget _userCoins(
          BuildContext context, Color? color, int centAmount, String denum) =>
      InkWell(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            decoration: BoxDecoration(
                color: color,
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(50))),
            child: Center(
              child: Text(
                denum,
                style: TextStyle(color: Colors.black54),
              ),
            ),
          ),
        ),
        onTap: () {
          setState(() {
            _con.insertCoin(centAmount);
            log(centAmount.toString());
          });
        },
      );

  Widget _buildLED(BuildContext context, String sign, int value) => Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.greenAccent[400],
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: FittedBox(
              alignment: Alignment.centerRight,
              child: Text(
                value.toString(),
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      );

  Widget _message(BuildContext context, String sign) => Padding(
        padding: const EdgeInsets.all(5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.greenAccent[400],
            border: Border.all(
              color: Colors.grey,
            ),
          ),
          child: SizedBox(
            width: double.infinity,
            child: FittedBox(
              alignment: Alignment.centerRight,
              child: Text(
                sign,
                textAlign: TextAlign.right,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      );
}
