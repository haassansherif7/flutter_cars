import 'package:flutter/material.dart';

import 'package:gam3a_cars_project/widget/rent_check_out.dart';

// ignore: must_be_immutable
class card extends StatelessWidget {
  card(
      {required this.image,
      required this.text,
      required this.cost,
      required this.name});
  AssetImage image;
  String text;
  dynamic cost;
  String name;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: Color.fromARGB(109, 120, 229, 218),
      elevation: 4.0,
      child: Column(
        children: [
          Container(
            height: 250.0,
            child: Ink.image(
              image: image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            text,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text('$cost',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 165),
                child: ButtonBar(
                  children: [
                    TextButton(
                      child: Text(
                        name,
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 233, 230, 203)),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return cash();
                        }));
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

