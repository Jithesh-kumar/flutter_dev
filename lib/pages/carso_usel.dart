import 'package:flutter/material.dart';

class AnimationCarsole extends StatefulWidget {
  const AnimationCarsole({super.key});

  @override
  State<AnimationCarsole> createState() => _AnimationCarsoleState();
}

class _AnimationCarsoleState extends State<AnimationCarsole> {
  final List<List<String>> products = [
    ['assets/images/one.jpg', 'Boxed Water Is Better', '\$100'],
    ['assets/images/box2.jpg', 'Toward a #BETTERPLANET', '\$100'],
    ['assets/images/box3.jpg', 'BETTER THAN PLASTIC & ALUMINUM', '\$100']
  ];
  int currentIndex = 0;

  void _next() {
    setState(() {
      currentIndex = (currentIndex + 1) % products.length;
    });
  }

  void _preve() {
    setState(() {
      currentIndex = (currentIndex - 1 + products.length) % products.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onHorizontalDragEnd: (DragEndDetails details) {
                if (details.velocity.pixelsPerSecond.dx > 0) {
                  _preve();
                } else if (details.velocity.pixelsPerSecond.dx < 0) {
                  _next();
                }
              },
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: Container(
                  key: ValueKey<int>(currentIndex),
                  width: double.infinity,
                  height: 550,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(products[currentIndex][0]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.grey[700]!.withOpacity(.9),
                          Colors.grey.withOpacity(.0),
                        ],
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: 90,
                          margin: const EdgeInsets.only(bottom: 60),
                          child: Row(
                            children: _buildIndicator(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Transform.translate(
                offset: const Offset(0, -48),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        products[currentIndex][1],
                        style: TextStyle(
                          color: Colors.grey[800],
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: <Widget>[
                          Text(
                            products[currentIndex][2],
                            style: TextStyle(
                              color: Colors.deepOrange[700],
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                size: 18,
                                color: Colors.blue[700],
                              ),
                              Icon(
                                Icons.star,
                                size: 18,
                                color: Colors.blue[700],
                              ),
                              Icon(
                                Icons.star,
                                size: 18,
                                color: Colors.blue[700],
                              ),
                              Icon(
                                Icons.star,
                                size: 18,
                                color: Colors.blue[700],
                              ),
                              Icon(
                                Icons.star_half,
                                size: 18,
                                color: Colors.blue[700],
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                "(4.2/100 reviews)",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          // Add your "Add to Cart" logic here
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.yellow[700],
                        ),
                        child: const Center(
                          child: Text(
                            "BUY NOW",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return Expanded(
      child: Container(
        height: 4,
        margin: const EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: isActive ? Colors.grey[800] : Colors.white),
      ),
    );
  }

  List<Widget> _buildIndicator() {
    List<Widget> indicators = [];
    for (int i = 0; i < products.length; i++) {
      if (currentIndex == i) {
        indicators.add(_indicator(true));
      } else {
        indicators.add(_indicator(false));
      }
    }
    return indicators;
  }
}

void main() {
  runApp(const MaterialApp(home: AnimationCarsole()));
}
