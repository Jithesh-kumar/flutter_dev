import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_app/pages/carso_usel.dart';

class Firstpage extends StatefulWidget {
  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  final List<Map<String, dynamic>> _listItem = [
    {"image": 'assets/images/living.jpg', "isSaved": false},
    {"image": 'assets/images/interior.jpg', "isSaved": false},
    {"image": 'assets/images/flower.jpg', "isSaved": true},
    {"image": 'assets/images/seagull.jpg', "isSaved": true},
    {"image": 'assets/images/living.jpg', "isSaved": false},
    {"image": 'assets/images/interior.jpg', "isSaved": false},
    {"image": 'assets/images/flower.jpg', "isSaved": false},
    {"image": 'assets/images/seagull.jpg', "isSaved": false},
    {"image": 'assets/images/bird.jpg', "isSaved": false},
    {"image": 'assets/images/flower.jpg', "isSaved": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(Icons.arrow_back),
        ),
        //title: const Text(""),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 36,
              height: 30,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/one.jpg'),
                        fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient:
                          LinearGradient(begin: Alignment.bottomRight, colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ])),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      const Text(
                        "Lifestyle Sale",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        margin: const EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const AnimationCarsole(),
                              ),
                            );
                          },
                          child: Center(
                              child: Text(
                            "Shop Now",
                            style: TextStyle(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: _listItem
                      .map(
                        (item) => Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(item["image"]),
                                    fit: BoxFit.cover)),
                            child: Transform.translate(
                              offset: const Offset(55, -58),
                              child: Container(
                                width: 30,
                                // height: 30,
                                clipBehavior: Clip.hardEdge,
                                decoration: const BoxDecoration(),
                                child: Center(
                                  child: MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        item["isSaved"] = !item["isSaved"];
                                      });
                                    },
                                    color: Colors.white,
                                    height: 35,
                                    minWidth: 40,
                                    padding: const EdgeInsets.all(0),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Icon(
                                        item["isSaved"]
                                            ? Icons.bookmark
                                            : Icons.bookmark_border,
                                        size: 22,
                                        color: item["isSaved"]
                                            ? Colors.yellow[700]
                                            : Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
