import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// ignore_for_file: prefer_const_constructors

/// Snackautomat
class SnackPage extends StatelessWidget {
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
                                      0),
                                  _snackContainer(
                                      context,
                                      'https://cdn.shopify.com/s/files/1/0015/8882/2075/products/1033_1024x1024@2x.jpg?v=1523789645',
                                      0),
                                  _snackContainer(
                                      context,
                                      'https://cdn.shopify.com/s/files/1/0015/8882/2075/products/1033_1024x1024@2x.jpg?v=1523789645',
                                      0),
                                  _snackContainer(
                                      context,
                                      'https://gastronomie-rhein-main.de/wp-content/uploads/2016/10/Dose-Sweet-Paprika.png',
                                      150),
                                  _snackContainer(
                                      context,
                                      'https://www.manner.com/sites/default/files/2019-10/website_bilder_tp_glow_0.png',
                                      65),
                                  _snackContainer(
                                      context,
                                      'https://img.rewe-static.de/4578503/26892520_digital-image.png',
                                      200),
                                  _snackContainer(
                                      context,
                                      'https://paradisealacarte.com/wp-content/uploads/2016/10/0030-600x600.png',
                                      60),
                                  _snackContainer(
                                      context,
                                      'https://img.rewe-static.de/3137237/31505381_digital-image.png',
                                      60),
                                  _snackContainer(
                                      context,
                                      'https://tacs.b-cdn.net/696-large_default/skittles-wild-berry.jpg',
                                      60),
                                  _snackContainer(
                                      context,
                                      'https://www.knabbershop.de/media/image/thumbnail/pp_30g_2013_packshot5efda6507afca_720x600.png',
                                      60),
                                  _snackContainer(
                                      context,
                                      'https://www.star-trier.de/data/product/big/ungarisch_packshot(1).png',
                                      75),
                                  _snackContainer(
                                      context,
                                      'https://img.rewe-static.de/7975855/31704418_digital-image.png',
                                      80),
                                  _snackContainer(
                                      context,
                                      'https://cdn.webshopapp.com/shops/263536/files/294757341/600x600x2/freeway-freeway-cola.jpg',
                                      30),
                                  _snackContainer(
                                      context,
                                      'https://neu-getraenke-food.de/wp-content/uploads/2020/05/neu-getraenke-gro%C3%9Fhandel_fitlove__produkte_effect-pfandfrei-033l-can.png',
                                      90),
                                  _snackContainer(
                                      context,
                                      'https://lieferlimo.com/wp-content/uploads/LL0155.png',
                                      180),
                                  _snackContainer(
                                      context,
                                      'https://cdn.shopify.com/s/files/1/0015/8882/2075/products/1033_1024x1024@2x.jpg?v=1523789645',
                                      0),
                                  _snackContainer(
                                      context,
                                      'https://cdn.shopify.com/s/files/1/0015/8882/2075/products/1033_1024x1024@2x.jpg?v=1523789645',
                                      0),
                                  _snackContainer(
                                      context,
                                      'https://cdn.shopify.com/s/files/1/0015/8882/2075/products/1033_1024x1024@2x.jpg?v=1523789645',
                                      0),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
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
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(10),
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
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            color: Colors.green[900],
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black38,
                                border: Border(
                                  bottom:
                                      BorderSide(width: 3, color: Colors.black),
                                  left: BorderSide(
                                    width: 3,
                                    color: Colors.black,
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
                                  bottom:
                                      BorderSide(width: 3, color: Colors.black),
                                  left: BorderSide(
                                    width: 3,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              padding: EdgeInsets.all(5),
                              child: Flex(
                                direction: Axis.vertical,
                                children: [
                                  Flexible(
                                    flex: 2,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        color: Colors.black,
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
                                              child: _buildLED(
                                                  context,
                                                  Colors.lightGreenAccent,
                                                  'Preis'),
                                            ),
                                            Expanded(
                                              child: _buildLED(
                                                  context,
                                                  Colors.lightGreenAccent,
                                                  'Eingabe'),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 5,
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
                                      padding: const EdgeInsets.all(8),
                                      child: Container(
                                        child: Flex(
                                          direction: Axis.horizontal,
                                          children: [
                                            Flexible(
                                              flex: 2,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    border: Border.all(
                                                        color: Colors.grey),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(50),
                                                    ),
                                                  ),
                                                  child: Text(
                                                    ' A ',
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              flex: 3,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(5),
                                                child: Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.black,
                                                        border: Border.all(
                                                            color:
                                                                Colors.grey))),
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

  Widget _snackContainer(BuildContext context, String link, int productPrice) =>
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
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(link,
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover),
                  Positioned(
                    child: Container(
                      color: Color.fromRGBO(155, 255, 255, 0.6),
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

                      //Icon(Icons.ac_unit),
                      //Text('$productID'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
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
      );

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
      );

  Widget _buildLED(BuildContext context, Color? color, String sign) => InkWell(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.greenAccent[400],
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
      );
}
