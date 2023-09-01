import 'package:flutter/material.dart';
import 'package:login_app/pages/home.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  void _handleLogout(BuildContext context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            color: Colors.white54,
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                ListTile(
                  leading: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                  //trailing: Icon(Icons.menu),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      maxRadius: 65,
                      backgroundImage: AssetImage("assets/images/6195145.jpg"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/download.png"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/GooglePlus-logo-red.png"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                          "assets/images/1_Twitter-new-icon-mobile-app.jpg"),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                          "assets/images/600px-LinkedIn_logo_initials.png"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Thomas Shelby",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
                    )
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("@peakyBlinders")],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Master manipulator, deal-maker and\n                   entrepreneur",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                    child: ListView(
                  children: [
                    Card(
                      margin: const EdgeInsets.only(
                          left: 35, right: 35, bottom: 10),
                      color: Colors.white70,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const ListTile(
                        leading: Icon(
                          Icons.privacy_tip_sharp,
                          color: Colors.black54,
                        ),
                        title: Text(
                          'Privacy',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      color: Colors.white70,
                      margin: const EdgeInsets.only(
                          left: 35, right: 35, bottom: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const ListTile(
                        leading: Icon(
                          Icons.history,
                          color: Colors.black54,
                        ),
                        title: Text(
                          'History',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      color: Colors.white70,
                      margin: const EdgeInsets.only(
                          left: 35, right: 35, bottom: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const ListTile(
                        leading:
                            Icon(Icons.help_outline, color: Colors.black54),
                        title: Text(
                          'Help & Support',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      color: Colors.white70,
                      margin: const EdgeInsets.only(
                          left: 35, right: 35, bottom: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const ListTile(
                        leading: Icon(
                          Icons.privacy_tip_sharp,
                          color: Colors.black54,
                        ),
                        title: Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      color: Colors.white70,
                      margin: const EdgeInsets.only(
                          left: 35, right: 35, bottom: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const ListTile(
                        leading: Icon(
                          Icons.add_reaction_sharp,
                          color: Colors.black54,
                        ),
                        title: Text(
                          'Invite a Friend',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Card(
                      color: Colors.white70,
                      margin: const EdgeInsets.only(
                          left: 35, right: 35, bottom: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: const ListTile(
                        leading: Icon(
                          Icons.logout,
                          color: Colors.black54,
                        ),
                        title: Text(
                          'Logout',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                    )
                  ],
                ))
              ],
            ),
          ),
        ));
  }
}
