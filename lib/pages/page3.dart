import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Third_Pages extends StatelessWidget {
  // const Third_Pages({Key? key}) : super(key: key)

  List<Map<dynamic, dynamic>> items = [
    {'icon': Icons.qr_code_scanner, 'title': "Scan"},
    {'icon': Icons.bar_chart, 'title': "Your bill"},
    {'icon': Icons.ac_unit, 'title': "Promos"},
  ];
//list method start......

  Widget myListView(var index) {
    List<String> titles = [
      'Transfer',
      'Top Up',
      'Transfer',
      'Top Up',
      'Transfer',
      'Top up',
      'Transfer',
    ];
    List<String> subtitles = [
      "To+6282252=11-06-2022",
      "From+6282222=11-06-2022",
      "From+624548264=10-06-2022",
      "To+6281158=05-06-2023",
      "To+7456252=11-08-2022",
      "From+62825522=01-06-2023"
          "To+46575365=11-05-2004"
    ];
    List<dynamic> icons = [
      Icons.drive_file_move_rtl_outlined,
      Icons.monetization_on_outlined,
      Icons.drive_file_move_rtl_outlined,
      Icons.monetization_on_outlined,
      Icons.drive_file_move_rtl_outlined,
      Icons.monetization_on_outlined,
      Icons.drive_file_move_rtl_outlined
    ];

    List<String> trailings = [
      "Rp 60,000",
      "+Rp700,000",
      "+Rp 25000",
      "Rp70000",
      "+Rp50000",
      "Rp45000",
      "+Rp80000"
    ];

    // return ListView.builder(
    // itemCount: titles.length,
    //  itemBuilder: (context, index) {
    return Card(
      //                           <-- Card widget
      child: ListTile(
        leading: Icon(icons[index]),
        title: Text(titles[index]),
        subtitle: Text(subtitles[index]),
        trailing: Text(trailings[index]),
      ),
    );
  }

//list method ends
  Widget tabs(var item) {
    return Container(
      margin: EdgeInsets.only(right: 8.0),
      // padding: EdgeInsets.symmetric(vertical:15),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.blueGrey,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            item['icon'],
            size: 32,
          ),
          Text(item['title'], style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                height: 290,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'PayLater',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        Icon(
                          Icons.more_horiz_sharp,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 100,
                      padding: EdgeInsets.all(20),
                      // width: double.infinity,
                      color: Colors.black54,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Limits availabel",
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Rp 13.500.000",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.yellow,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5))),
                            child: Text("Withdraw",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      child: Row(
                        children: [
                          tabs(items[0]),
                          tabs(items[1]),
                          tabs(items[2]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              // main container end
              // start Second Container
              Container(
                height: 120,
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.add_chart_rounded, size: 40),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Raise your limit here!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("Add another identity to increase your limit"),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 500,
                    height: 50,
                    color: Colors.yellow,
                    child: Center(child: Text("Raise your limit")),
                  ),
                ]),
              ),

              // second container End

              // new section start
              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Lates Transactions',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  //   SizedBox(width: 140),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),

// new section end
              Container(
                height: 500,
                child: ListView(
                  children: [
                    myListView(0),
                    myListView(1),
                    myListView(2),
                    myListView(3),
                    myListView(4),
                    myListView(5),
                    //  myListView(6),
                  ],
                ),
              )
// End section
            ],
          ),
        ),
      ),
    );
  }
}
