import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Center(
            child: ListView(children: [
              Column(
                 children: <Widget>[
              CircleAvatar(
                radius: 50.0,
               backgroundImage: AssetImage('images/profile.JPG'),
              ),
                  Text( "\n Lamia ",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                    SizedBox(
                    height: 25,
                  ),
                  RowWidget(
                    icon: Icons.email,
                    name: "Your email",
                  ), 
         
                  SizedBox(
                    height: 25,
                  ),
                  RowWidget(
                    icon: Icons.shopping_bag,
                    name: "Your Orders",
                  ),
            
                  SizedBox(
                    height: 25,
                  ),
                  RowWidget(
                    icon: Icons.location_on,
                    name: "Your Address",
                  ),
                ],
              ),
            ]),
          )),
    );
  }
}
class RowWidget extends StatelessWidget {
  final String name;
  final IconData icon;
  const RowWidget({
    Key? key,
    required this.name,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(300, 60),
              primary: Color.fromARGB(184, 0, 0, 0), // Background color
              onPrimary: Color.fromARGB(255, 240, 235, 235),
            ),
            child: Row(children: [
              Icon(icon, size: 25, color: Color.fromARGB(255, 254, 251, 251)),
              SizedBox(
                width: 30,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

  
   
