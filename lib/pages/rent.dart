import 'package:flutter/material.dart';
import 'package:gam3a_cars_project/home/home.dart';
import 'package:gam3a_cars_project/widget/card.dart';
import 'package:gam3a_cars_project/widget/login.dart';
class rentpage extends StatefulWidget {
  const rentpage({super.key});

  @override
  State<rentpage> createState() => _rentpageState();
}

int cost = 0;

class _rentpageState extends State<rentpage> {
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
          'Rent Car',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(111, 111, 131, 129),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('sami'),
                accountEmail: Text('Ahmed_sami@gmail.com'),
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
              child: card(
                image: AssetImage(
                    'assets/WhatsApp Image 2024-04-27 at 8.46.47 PM (2).jpeg'),
                text: 'Mercedes C180 Avantgarde ',
                cost: '${3000}EGP/day',
                name: 'Rent',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 5),
              child: card(
                image: AssetImage(
                    'assets/WhatsApp Image 2024-04-27 at 8.46.47 PM (1).jpeg'),
                text: 'Alfa Romeo Giulia',
                cost: '${2000}EGP/day',
                name: 'Rent',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 5),
              child: card(
                image: AssetImage(
                    'assets/WhatsApp Image 2024-04-27 at 8.46.47 PM.jpeg'),
                text: 'Audi A4',
                cost: '${2200}EGP/day',
                name: 'Rent',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 5),
              child: card(
                image: AssetImage(
                    'assets/WhatsApp Image 2024-04-27 at 8.54.44 PM.jpeg'),
                text: 'MG 5',
                cost: '${800}EGP/day',
                name: 'Rent',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 5),
              child: card(
                image: AssetImage(
                    'assets/WhatsApp Image 2024-04-28 at 6.31.39 PM.jpeg'),
                text: 'KIA Cerato',
                cost: '${900}EGP/day',
                name: 'Rent',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 5),
              child: card(
                image: AssetImage(
                    'assets/WhatsApp Image 2024-04-28 at 6.21.59 PM.jpeg'),
                text: 'BMW 340I',
                cost: '${2800}EGP/day',
                name: 'Rent',
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
