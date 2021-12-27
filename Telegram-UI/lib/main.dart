import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xff55879F),
        title: Text(
          "Telegram",
          style: TextStyle(
              fontSize: 23, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
                size: 30,
              ))
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Stack(children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: new Image.asset(
                        'assets/avatar.jpg',
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ],
                ),
                Card(
                    color: Colors.transparent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Eebba Koo",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "+251915542141",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w600),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                size: 25,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
              ]),
            ),
            tile(msg: "Contacts", im: Icons.calendar_today),
            tile(msg: "Saved Messages", im: Icons.bookmark),
            tile(msg: "Settings", im: Icons.settings),
            tile(msg: "Invite Friends", im: Icons.person_add),
            tile(msg: "Help", im: Icons.help),
            Divider(
              height: 10,
            ),
            tile(msg: "Night Mode", im: Icons.nightlight_round),
          ],
        ),
      ),
      body: Column(
        children: [
          list(
              url: 'assets/frelancer.jpg',
              name: "Freelancer",
              tym: "07:03 PM",
              desc: "install new ssl certificate...",
              msg: "172",
              isRead: true),
          Divider(
            height: 0.2,
          ),
          list(
              url: 'assets/chatroom.jpg',
              name: "Chat room",
              tym: "26/12/2021",
              desc: "At the whole we don't have class tomorrow",
              msg: "1",
              isRead: false),
          Divider(
            height: 0.2,
          ),
          list(
              url: 'assets/codenight.jpg',
              name: "CodeNight",
              tym: "5:25 PM",
              desc: "guys could you  help me find free....",
              msg: "14",
              isRead: true),
          Divider(
            height: 0.2,
          ),
          list(
              url: 'assets/mayko.jpg',
              name: "Mayko",
              tym: "12/12/2021",
              desc: "https://youtu.be/FokQW_CZf7w...",
              msg: "1",
              isRead: true),
          Divider(
            height: 0.2,
          ),
          list(
              url: 'assets/five.jfif',
              name: "FlutterDev",
              tym: "11.11pm",
              desc: "Send Emails without Backend....",
              msg: "2",
              isRead: true),
          Divider(
            height: 0.2,
          ),
          list(
              url: 'assets/six.jfif',
              name: "Betty",
              tym: "11:11pm",
              desc: "whr r u baby?",
              msg: "4",
              isRead: true),
          Divider(
            height: 0.2,
          ),
          list(
              url: 'assets/tikvah.jpg',
              name: "TIKVAH-ETHIOPIA",
              tym: "04:50 PM",
              desc: "ጠ/ሚ አብደላ ሀምዶክ ስልጣን ሊለቁ ነው ?",
              msg: "3",
              isRead: false),
          Divider(
            height: 0.2,
          ),
          list(
              url: 'assets/influencer.jpg',
              name: "Influencer",
              tym: "5:11 PM",
              desc: "Mismatching Words with Business",
              msg: "123",
              isRead: true),
          Divider(
            height: 0.2,
          ),
        ],
      ),
    );
  }

  ListTile tile({String msg, IconData im}) {
    return ListTile(
      leading: Icon(
        im,
        color: Colors.black54,
        size: 30,
      ),
      title: Text(
        msg,
        style: TextStyle(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
      ),
    );
  }

  ListTile list(
      {String url,
      String name,
      String tym,
      String desc,
      String msg,
      bool isRead}) {
    return ListTile(
      contentPadding: EdgeInsets.only(top: 5, left: 10),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: ExactAssetImage(url),
      ),
      title: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
            ),
            Text(
              tym,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ],
        ),
      ),
      subtitle: Padding(
        padding: EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              desc,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(3),
                child: Text(
                  msg,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
              decoration: BoxDecoration(
                border: isRead ? Border.all(width: 0) : Border.all(width: 0),
                borderRadius: BorderRadius.circular(50),
                color: isRead ? Color(0xff55879F) : Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
