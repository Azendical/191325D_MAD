import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red[600]),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: ListView(
            children: [
              AppBar(
                backgroundColor: Colors.yellow,
                title: Center(
                  child: Text(
                    'GoGoFood',
                    style: TextStyle(
                      color: Colors.red[600],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        image: AssetImage('images/Italian.jpg'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        image: AssetImage('images/Crystal Jade.jpg'),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Image(
                        image: AssetImage('images/Fruits.jpg'),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 350.0,
                      child: Image(
                        image: AssetImage('images/Pizza.png'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(32),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    'Pizza',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red[600],
                                    ),
                                  ),
                                ),
                                Text(
                                  '\u00247.00',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.red[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              print("Placed As Favourite");
                            },
                            icon: Icon(Icons.favorite),
                            color: Colors.red,
                            highlightColor: Colors.orange[700],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 350.0,
                      child: Image(
                        image: AssetImage('images/Pasta.jpg'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(32),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    'Pasta',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red[600],
                                    ),
                                  ),
                                ),
                                Text(
                                  '\u00246.50',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.red[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              print("Placed As Favourite");
                            },
                            icon: Icon(Icons.favorite),
                            color: Colors.red,
                            highlightColor: Colors.orange[700],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 350.0,
                      color: Colors.white,
                      child: Image(
                        image: AssetImage('images/Nasi Lemak.jpg'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(32),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    'Nasi Lemak',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red[600],
                                    ),
                                  ),
                                ),
                                Text(
                                  '\u00242.50',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.red[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              print("Placed As Favourite");
                            },
                            icon: Icon(Icons.favorite),
                            color: Colors.red,
                            highlightColor: Colors.orange[700],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Colors.yellow,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 350.0,
                      child: Image(
                        image: AssetImage('images/Chicken Rice.jpg'),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(32),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    'Chicken Rice',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red[600],
                                    ),
                                  ),
                                ),
                                Text(
                                  '\u00244.50',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.red[600],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              print("Placed As Favourite");
                            },
                            icon: Icon(Icons.favorite),
                            color: Colors.red,
                            highlightColor: Colors.orange[700],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
