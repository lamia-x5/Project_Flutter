import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          height: 40,
        ),
        GridView(
          shrinkWrap: true,
          primary: false,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 10 / 18,
          ),
          children: [
            ProductsWidget(
              Imageurl: "images/Balls.webp",
              Description: "Dunlop fort All court Tennis Balls",
              name: "FORT Tennis",
              price: "87 SAR",
            ),
            ProductsWidget(
              Imageurl: "images/rackets.webp",
              Description: "Tennis Racket - Grip Size 1- 4 1/8",
              name: "WILSON Tennis rackets",
              price: "460 SAR",
            ),
            ProductsWidget(
              Imageurl: "images/Shoes.webp",
              Description: "ASICS Women's Gel-Resolution 8 Tennis Shoes",
              name: "ASICS",
              price: "378 SAR",
            ),
            ProductsWidget(
              Imageurl: "images/bag.jpg",
              Description: "Bag Wilson",
              name: "Bag",
              price: "276 SAR",
            ),
            ProductsWidget(
              Imageurl: "images/Shoes.webp",
              Description: "ASICS Women's Gel-Resolution 8 Tennis Shoes",
              name: "ASICS",
              price: "378 SAR",
            ),
            ProductsWidget(
              Imageurl: "images/rackets.webp",
              Description: "Tennis Racket - Grip Size 1-4 1/8",
              name: "WILSON Tennis rackets",
              price: "288 SAR",
            ),
            ProductsWidget(
              Imageurl: "images/Balls.webp",
              Description: "Dunlop fort All court Tennis Balls",
              name: "FORT Tennis",
              price: "87 SAR",
            ),
          ],
        )
      ]),
    );
  }
}

class ProductsWidget extends StatelessWidget {
  final String Imageurl;
  final String name;
  final String price;
  final String Description;

  const ProductsWidget({
    Key? key,
    required this.Imageurl,
    required this.name,
    required this.price,
    required this.Description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10, bottom: 20),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(255, 255, 255, 255),
            border: Border.all(width: 0.1)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 2,
            ),
            Image.asset(
              Imageurl,
              height: 120,
              width: 200,
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              price,
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 9),
            Text(Description),
            SizedBox(
              height: 12,
            ),
          
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add, size: 12),
              label: Text("Add to Cart"),
              style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 37, 37, 37)),
  ),
            )
  
          ]),
        ),
      ),
    );
  }
}
