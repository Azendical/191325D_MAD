import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  OrderPage({Key key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.red[600]),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: ListView(
          children: [
            //Top Image Banner
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Image(
                image: AssetImage('images/Crystal Jade.jpg'),
              ),
            ),
            //Test
            Center(
              child: Text(
                'Choose a variety of dishes below',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                ),
              ),
            ),
            //GridView
            Container(
              height: 330,
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 0.5,
                crossAxisSpacing: 0.5,
                children: [
                  buildGridItem('Jia He.jpg', 7),
                  buildGridItem('Chicken Rice.jpg', 5),
                  buildGridItem('Roast Chicken.jpg', 6),
                  buildGridItem('Beef Stew.jpg', 8),
                  buildGridItem('Mala.jpg', 10),
                  buildGridItem('Dim Sum.jpg', 2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildGridItem(String image, int min) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.yellow,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Image
          Image(
            image: AssetImage('images/$image'),
            height: 95.0,
            width: 200.0,
          ),
          //Text
          SizedBox(height: 5.0),
          Text(
            'This dish cost \$$min',
            style: TextStyle(
              fontSize: 14,
              color: Colors.red[600],
            ),
          ),
          //Button
          RaisedButton(
            onPressed: () {},
            color: Colors.red[600],
            highlightColor: Colors.orange[700],
            elevation: 5,
            child: Text(
              'Order Now',
              style: TextStyle(
                color: Colors.yellow,
              ),
            ),
          )
        ],
      ),
    );
  }
}
