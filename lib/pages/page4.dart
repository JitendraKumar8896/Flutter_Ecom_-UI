import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Four_Pages extends StatelessWidget {
  const Four_Pages({Key? key}) : super(key: key);
//List tile Method Start
  Widget myListView(var index) {
    List<dynamic> titles = [
      Text("Credit Score"),
      Text("Installment calculator"),
      Text("Invite your friends"),
      Text("Support"),
      Text("About Us"),
      Text(
        "Logout",
        style: TextStyle(color: Colors.red),
      ),
    ];

    List<dynamic> icons = [
      Icon(Icons.person_3_outlined),
      Icon(Icons.calculate),
      Icon(Icons.share_location_sharp),
      Icon(Icons.support_agent),
      Icon(Icons.account_box_outlined),
      Icon(
        Icons.logout,
        color: Colors.red,
      )
    ];

    List<dynamic> trailings = [
      Icon(Icons.arrow_forward_ios_outlined),
      Icon(Icons.arrow_forward_ios_outlined),
      Icon(Icons.arrow_forward_ios_outlined),
      Icon(Icons.arrow_forward_ios_outlined),
      Icon(Icons.arrow_forward_ios_outlined),
      Icon(
        Icons.arrow_forward_ios_outlined,
        color: Colors.red,
      )
    ];
    return Card(
      elevation: 0,
      margin: EdgeInsets.all(0),
      child: ListTile(
        leading: (icons[index]),
        title: (titles[index]),
        trailing: (trailings[index]),
      ),
    );
  }

// List tile method end
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: ListView(children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 128, 130, 132),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        foregroundImage: AssetImage("assets/images/man.png"),
                        backgroundColor: Colors.yellow,
                        radius: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Leonardo Ujang",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Premium", style: TextStyle(color: Colors.white))
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios),
                    ],
                  ),

                  Divider(height: 10, thickness: 2),
                  // Upgrade your account portion start
                  SizedBox(height: 15),
                  Container(
                    height: 120,
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(137, 35, 34, 34),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.telegram, size: 40),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Upgrade your account!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                  "Get Ultimate Premium accounts for more discount",
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: const Color.fromARGB(
                                        255, 131, 130, 126),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 500,
                        height: 50,
                        color: Colors.yellow,
                        child: Center(child: Text("Upgrade Now")),
                      ),
                    ]),
                  ),

                  // End account portion
                ],
              ),

              //
            ),
// Log out Portion
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 128, 130, 132),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(children: [
                myListView(0),
                myListView(1),
                myListView(2),
                myListView(3),
                myListView(4),
                myListView(5),
              ]),
            ),

// Log out portion End
          ]),
        ),
      ),
    );
  }
}
