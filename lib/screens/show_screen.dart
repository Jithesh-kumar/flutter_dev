import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ShowScreen extends StatefulWidget {
  const ShowScreen({Key? key});

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  var height, width;
  int index = 0;
  List<double> ratings = [4.5, 3.0, 5.0];

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true, // Extend the body behind the app bar
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // Set the app bar background to transparent
        elevation: 0, // Remove the app bar shadow
        automaticallyImplyLeading: false, // Remove the back button
      ),
      body: Container(
        height: height,
        width: width,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              height: height * 0.57,
              width: width,
              decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/k1.jpg"),
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Stack(
                children: [
                  Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.40),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(35),
                        bottomRight: Radius.circular(35),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "The Montcalm At",
                            style: GoogleFonts.lexend(
                              fontSize: width * 0.066,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "The sample text",
                            style: GoogleFonts.lexend(
                              fontSize: width * 0.066,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.blue,
                                size: width * 0.07,
                              ),
                              Text(
                                "India",
                                style: GoogleFonts.lexend(
                                  fontSize: width * 0.038,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: height * 0.02,
                          ),
                          RatingBar.builder(
                            initialRating: 3,
                            itemCount: 5,
                            glowColor: Colors.white,
                            itemBuilder: (context, index) {
                              switch (index) {
                                case 0:
                                  return const Icon(
                                    Icons.sentiment_very_dissatisfied,
                                    color: Colors.red,
                                  );
                                case 1:
                                  return const Icon(
                                    Icons.sentiment_dissatisfied,
                                    color: Colors.redAccent,
                                  );
                                case 2:
                                  return const Icon(
                                    Icons.sentiment_neutral,
                                    color: Colors.amber,
                                  );
                                case 3:
                                  return const Icon(
                                    Icons.sentiment_satisfied,
                                    color: Colors.lightGreen,
                                  );
                                case 4:
                                  return const Icon(
                                    Icons.sentiment_very_satisfied,
                                    color: Colors.green,
                                  );
                                default:
                                  return Container(); // You can return an empty Container for unsupported index.
                              }
                            },
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: width * 0.03,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and when an unknown printer took a galley of type and scrambled it to make a type specimen book. typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                  style: GoogleFonts.lexend(
                    fontSize: width * 0.038,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.05, top: height * 0.01),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/clock.png",
                    height: height * 0.032,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "9AM - 6PM",
                    style: GoogleFonts.lexend(
                      fontSize: width * 0.038,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/calendar.png",
                    height: height * 0.032,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "Monday - Saturday",
                    style: GoogleFonts.lexend(
                      fontSize: width * 0.038,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: width * 0.05),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/flight.png",
                    height: height * 0.032,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "Ticket - 2 way",
                    style: GoogleFonts.lexend(
                      fontSize: width * 0.038,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * 0.05,
                vertical: height * 0.01,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: height * 0.07,
                    width: width * 0.45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: Center(
                      child: Text(
                        "\$1,50,000",
                        style: GoogleFonts.lexend(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w700,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for the button
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      child: Text(
                        "Book",
                        style: GoogleFonts.lexend(
                          fontSize: width * 0.05,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
