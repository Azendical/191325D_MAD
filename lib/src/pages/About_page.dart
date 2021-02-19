import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
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
                    'GoGoFood',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow,
                    ),
                  ),
                ),
                Text(
                  'Singapore, Singapore',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.yellow,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            size: 30.0,
            color: Colors.yellow,
          ),
          Text(
            '41',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Wrap(
        children: <Widget>[
          Text(
            'GoGoFood is a simple service to order food from a variety of restaurants online. Enjoy your favourite dishes across different '
            'cuisines and flavours delivered to your door step.\n\n',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
            softWrap: true,
          ),
          Text(
            'This is how GoGoFood works:\n\n',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
            ),
            softWrap: true,
          ),
          Text(
            'Finding a restaurant\n\n',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
            ),
            softWrap: true,
          ),
          Text(
            'Enter your postcode on the home page. Browse from our extensive list of restaurants that deliver to your area. Pick a restaurant '
            'you like and browse its menu.\n\n',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
            softWrap: true,
          ),
          Text(
            'Order what you want\n\n',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
            ),
            softWrap: true,
          ),
          Text(
            'Build up your meal by choosing from any of your favorite restaurants, browse the menu and select the items you will like to '
            'order. If options are required, e.g pizza toppings, you will be asked to choose them one you click on an item. Your items will '
            'appear on your cart on the right.\n\n',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
            softWrap: true,
          ),
          Text(
            'Checkout & Payment\n\n',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
            ),
            softWrap: true,
          ),
          Text(
            'Once you are happy with your order, click on the "ORDER NOW" button and enter your delivery address. Simply follow the checkout '
            'instructions from there. You can pay online or using cash on delivery.\n\n',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
            softWrap: true,
          ),
          Text(
            'Delivery\n\n',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
            ),
            softWrap: true,
          ),
          Text(
            'We will send you an email and SMS confirming your order and delivery time. Sit back, relax and wait for piping hot food to be '
            'conveniently delivered to you!\n\n',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
            ),
            softWrap: true,
          ),
        ],
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red[600],
        body: ListView(
          children: [
            Image.asset(
              'images/Logo.png',
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 30.0,
          color: Colors.yellow,
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.yellow,
            ),
          ),
        ),
      ],
    );
  }
}
