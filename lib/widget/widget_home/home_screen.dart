import 'package:flutter/material.dart';
import 'package:login_app/widget/card_widget.dart';

class PlantScreen extends StatefulWidget {
  const PlantScreen({Key? key}) : super(key: key); // Removed 'const' here
  static const routeName = '/item-screen';
  @override
  State<PlantScreen> createState() => _PlantScreenState();
}

class _PlantScreenState extends State<PlantScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(top: 18, left: 10),
          child: ListView(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 45,
                      width: 45,
                      child: Image.asset('assets/images/menu1.png'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        // Removed 'const' here
                        color: Color(0xFFF1F1F1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.shopping_cart), // Removed 'const' here
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 10,
                  top: 10,
                  bottom: 45,
                ),
                child: Text(
                  'Top Picks',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 15,
                  children: <Widget>[
                    CategoryTabs('Top'),
                    CategoryTabs('OutDoor'),
                    CategoryTabs('Indoor'),
                    CategoryTabs('Plant Pots'),
                    CategoryTabs('Easy Planted'),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 15,
                  children: <Widget>[
                    CardView(
                      cardTitle: 'Rose',
                      price: 27,
                      category: 'OUTDOOR',
                      imageName: 'plant3',
                    ),
                    CardView(
                      cardTitle: 'Monstera Deliciosa',
                      price: 36,
                      category: 'INDOOR',
                      imageName: 'plant4',
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Rose is a succulent plant species. Its '
                      'uses and air-purifying ability make it the plant that you shouldn\'t live without.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueGrey,
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

class CategoryTabs extends StatefulWidget {
  final String label;
  CategoryTabs(this.label);

  @override
  State<CategoryTabs> createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        widget.label,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
