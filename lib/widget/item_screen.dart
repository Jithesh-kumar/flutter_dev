import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:login_app/widget/widget_home/home_screen.dart';

class ItemScreen extends StatelessWidget {
  static const routeName = '/item-screen';
  final Color titleColor = Colors.white;
  final Color categColor = const Color.fromRGBO(255, 255, 255, 0.6);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.only(
            top: 18,
          ),
          color: Theme.of(context).primaryColor,
          child: Column(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: IconButton(
                        icon: const Icon(
                          Icons.keyboard_backspace,
                          color: Colors.white,
                          size: 27,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: IconButton(
                            icon: const Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Positioned(
                          top: 2,
                          right: 2,
                          child: Container(
                            height: 13,
                            width: 13,
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Text(
                                '1',
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 36, top: 36),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'OUTDOOR',
                      style: TextStyle(
                        color: categColor,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Rose',
                      style: TextStyle(
                        color: titleColor,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'FROM',
                      style: TextStyle(
                        color: categColor,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '\$30',
                      style: TextStyle(
                        color: titleColor,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'SIZES',
                      style: TextStyle(
                        color: categColor,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      'Small',
                      style: TextStyle(
                        color: titleColor,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.44,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 240,
                    left: 144,
                    child: Container(
                      height: 280,
                      width: 250,
                      child: Image.asset('assets/images/plant3.png'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20, top: 72),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 80,
                        ),
                        Text(
                          'All to Know about',
                          style: TextStyle(
                            fontSize: 27,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'If you\'re completely new to houseplants then Aloe is a \n briliant first plant'
                          ' to adopt, it is very easy to look after \n and won\'t occuppy too much space.',
                          style: TextStyle(
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
