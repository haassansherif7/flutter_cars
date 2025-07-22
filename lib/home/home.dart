import 'package:flutter/material.dart';
import 'package:gam3a_cars_project/pages/buy.dart';
import 'package:gam3a_cars_project/pages/rent.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        actions: [
          IconButton(onPressed:(){}, icon: Icon(Icons.account_box),color: const Color.fromARGB(255, 207, 207, 207),iconSize: 30,)
        ],
        title: Text('Cars',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor: Color.fromARGB(111,111, 131, 129),
      ),
      backgroundColor:Color.fromARGB(110, 17, 48, 45),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 55, left: 5),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Color.fromARGB(109, 120, 229, 218),
                  elevation: 4.0,
                  child: Column(
                    children: [
                      Container(
                        height: 200.0,
                        child: Ink.image(
                          image: AssetImage(
                              'assets/WhatsApp Image 2024-04-27 at 1.19.48 AM.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      ButtonBar(
                        children: [
                          TextButton(
                            child: const Text(
                              'Rent Car',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 233, 230, 203)),
                            ),
                            onPressed: () {
                                 Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                return rentpage();
                              }));
                                },
                          )
                        ],
                      )
                    ],
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60, left: 5),
              child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Color.fromARGB(109, 120, 229, 218),
                  elevation: 4.0,
                  child: Column(
                    children: [
                      Container(
                        height: 200.0,
                        child: Ink.image(
                          image: AssetImage(
                              'assets/WhatsApp Image 2024-04-27 at 2.21.11 AM.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      ButtonBar(
                        children: [
                          TextButton(
                            child: const Text(
                              'Buy Car',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 233, 230, 203)),
                            ),
                            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                                return buypage();
                              }));},
                          )
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
