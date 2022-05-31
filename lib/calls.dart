import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);
  // Masukkan coding disini
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (_) {
          _.disallowGlow();
          return true;
        },
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            callPhone("Ayang", Icons.call_received, Colors.green, "05 menit yang lalu", NetworkImage("https://i.postimg.cc/YCH7Q2xS/02.jpg")),
            callPhone("Cynthia", Icons.call_made, Colors.red, "50 menit yang lalu", NetworkImage("https://i.postimg.cc/wjVW9rhw/IMG-20220531-142605.jpg")),
            callPhone("Fuput", Icons.call_made, Colors.red, "Hari ini 20.21", NetworkImage("https://i.postimg.cc/YqVFYztt/IMG-20220518-WA0043.jpg")),
            callPhone("Clara", Icons.call_made, Colors.red, "Hari ini 20.21", NetworkImage("https://i.postimg.cc/W1ytQNdj/10.jpg")),
            callPhone("Sayang", Icons.call_received, Colors.green, "Hari ini 20.21", NetworkImage("https://i.postimg.cc/qvGH3jdF/08.jpg")),
            callPhone("Clara", Icons.call_received, Colors.green, "Hari ini 20.21", NetworkImage("https://i.postimg.cc/W1ytQNdj/10.jpg")),
            callPhone("Ayang", Icons.call_received, Colors.green, "Hari ini 20.21", NetworkImage("https://i.postimg.cc/YCH7Q2xS/02.jpg")),
            callPhone("Sayang", Icons.call_received, Colors.green, "Hari ini 20.21", NetworkImage("https://i.postimg.cc/1RKdM4dg/15.jpg")),
            callPhone("Cynthia", Icons.call_received, Colors.green, "Hari ini 20.21", NetworkImage("https://i.postimg.cc/wjVW9rhw/IMG-20220531-142605.jpg")),
            callPhone("Ibuk", Icons.call_received, Colors.green, "Hari ini 20.21", NetworkImage("https://i.postimg.cc/qvGH3jdF/08.jpg")),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.white,
            focusElevation: 0.0,
            onPressed: () {},
            child: Icon(
              Icons.video_call,
              color: Colors.teal.shade900,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(
              Icons.add_call,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget callPhone(String name, IconData iconSitus, Color iconColor, String Time, NetworkImage image) {
    return Card(
      margin: EdgeInsets.only(bottom: 0.9),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: image,
          radius: 40,
        ),
        title: Text(
          name,
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        subtitle: Row(
          children: [
            Icon(
              iconSitus,
              color: iconColor,
              size: 20,
            ),
            SizedBox(width: 6),
            Text(
              Time,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
        trailing: Icon(
          Icons.call,
          size: 28,
          color: Colors.teal,
        ),
      ),
    );
  }
}
