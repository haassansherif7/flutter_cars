import 'package:flutter/material.dart';
import 'package:gam3a_cars_project/home/home.dart';
import 'package:gam3a_cars_project/widget/card2.dart';
import 'package:gam3a_cars_project/widget/login.dart';


class buypage extends StatefulWidget {
  const buypage({super.key});

  @override
  State<buypage> createState() => _buypageState();
}
int cost=0;
class _buypageState extends State<buypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(111, 111, 131, 129),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_box),
            color: Color.fromARGB(108, 183, 255, 248),
            iconSize: 30,
          )
        ],
        title: Text(
          'Buy Car',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(111, 111, 131, 129),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('hassan'),
                accountEmail: Text('hassansheriff777@gmail.com'),
                currentAccountPicture: Image.asset(
                    'assets/Vintage Retro Automotive Garage Service Badge Logo (1).png')),
            ListTile(
              title: GestureDetector(
                child: Text('home'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return home();
                  }));
                },
              ),
            ),
           ListTile(
              title: GestureDetector(
                child: Text('Login Page'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return Login();
                  }));
                },
              ),
            ),
            ListTile(
              title: Text('settings'),
            ),
            ListTile(
              title: Text('orders'),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: card2(
                image: AssetImage(
                    'assets/WhatsApp Image 2024-04-28 at 7.16.10 PM.jpeg'),
                text: 'Lamborghini Urus ',
                cost: '${250000}€',
                name: 'Buy Now',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: card2(
                image: AssetImage(
                    'assets/WhatsApp Image 2024-04-28 at 7.16.45 PM.jpeg'),
                text: 'BMW 740i ',
                cost: '${650000}€',
                name: 'Buy Now',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: card2(
                image: AssetImage(
                    'assets/WhatsApp Image 2024-04-28 at 7.16.19 PM.jpeg'),
                text: 'Mercicdes G-63 ',
                cost: '${500000}€',
                name: 'Buy Now',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: card2(
                image: AssetImage(
                    'assets/WhatsApp Image 2024-04-28 at 7.27.08 PM.jpeg'),
                text: 'Ferrari F8 Spider ',
                cost: '${850000}€',
                name: 'Buy Now',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: card2(
                image: AssetImage(
                    'assets/WhatsApp Image 2024-04-28 at 7.24.01 PM.jpeg'),
                text: 'BMW X5 M ',
                cost: '${150000}€',
                name: 'Buy Now',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: card2(
                image: AssetImage(
                    'assets/WhatsApp Image 2024-04-28 at 7.23.49 PM.jpeg'),
                text: 'Range Rover Defender  ',
                cost: '${200000}€',
                name: 'Buy Now',
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
