import 'package:flutter/material.dart';
import 'package:gam3a_cars_project/home/home.dart';
import 'package:gam3a_cars_project/pages/buy.dart';

import 'package:gam3a_cars_project/widget/fonts.dart';
import 'package:gam3a_cars_project/widget/login.dart';

class cash2 extends StatefulWidget {
  cash2({super.key});

  @override
  State<cash2> createState() => _cash2State();
}

int days = 1;

class _cash2State extends State<cash2> {
  int _value = 0;
  int _value2 = 0;
  int _value3 = 0;
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
          'Buy check_out',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(111, 111, 131, 129),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text('Adham'),
                accountEmail: Text('adhamazaro@gmail.com'),
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
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[600]?.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 30),
                    border: InputBorder.none,
                    hintText: 'Phone Number',
                    hintStyle: kbar,
                    prefixIcon: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        Icons.phone,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  style: Kbody,
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            'Choose Car Like To Buy: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 23),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            }),
                        SizedBox(
                          width: 0.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            'Bmw',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Radio(
                              value: 2,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value!;
                                });
                              }),
                        ),
                        SizedBox(
                          width: 0.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            'Ferari',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Radio(
                              value: 3,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value!;
                                });
                              }),
                        ),
                        SizedBox(
                          width: 0.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            'Range Rover',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 4,
                            groupValue: _value,
                            onChanged: (value) {
                              setState(() {
                                _value = value!;
                              });
                            }),
                        SizedBox(
                          width: 0.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            'Mercedes',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Radio(
                              value: 5,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value!;
                                });
                              }),
                        ),
                        SizedBox(
                          width: 0.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            'Bmw X5',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Radio(
                              value: 6,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = value!;
                                });
                              }),
                        ),
                        SizedBox(
                          width: 0.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            'Lamborghini',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 20),
                          child: Text(
                            'Choose The Car Color: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 23),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: _value2,
                            onChanged: (value) {
                              setState(() {
                                _value2 = value!;
                              });
                            }),
                        SizedBox(
                          width: 0.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            'Black',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Radio(
                              value: 2,
                              groupValue: _value2,
                              onChanged: (value) {
                                setState(() {
                                  _value2 = value!;
                                });
                              }),
                        ),
                        SizedBox(
                          width: 0.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            'Red',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Radio(
                              value: 3,
                              groupValue: _value2,
                              onChanged: (value) {
                                setState(() {
                                  _value2 = value!;
                                });
                              }),
                        ),
                        SizedBox(
                          width: 0.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            'White',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Radio(
                              value: 4,
                              groupValue: _value2,
                              onChanged: (value) {
                                setState(() {
                                  _value2 = value!;
                                });
                              }),
                        ),
                        SizedBox(
                          width: 0.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            'Blue',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10, top: 30, bottom: 20),
                          child: Text(
                            'Choose The Payment Method: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 21),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                            value: 1,
                            groupValue: _value3,
                            onChanged: (value) {
                              setState(() {
                                _value3 = value!;
                              });
                            }),
                        SizedBox(
                          width: 0.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: Text(
                            'Cash',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 60),
                          child: Radio(
                              value: 2,
                              groupValue: _value3,
                              onChanged: (value) {
                                setState(() {
                                  _value3 = value!;
                                });
                              }),
                        ),
                        SizedBox(
                          width: 0.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            'Credit Card',
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: SizedBox(
                          width: 250,
                          child: ElevatedButton(
                            onPressed: () async {
                              bool result = await showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Check_out Of Buy'),
                                    content: Text('Check_out Done'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop(true);
                                        },
                                        child: Text('Finish'),
                                      ),
                                    ],
                                  );
                                },
                              );
                              if (result == true) {
                                Navigator.pop(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return buypage();
                                }));
                              }
                              ;
                            },
                            child: Text(
                              'Submit',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 23),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  const Color.fromARGB(255, 26, 87, 138)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
