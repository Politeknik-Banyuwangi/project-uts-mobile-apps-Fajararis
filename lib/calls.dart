import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Calls extends StatelessWidget {
  const Calls({Key? key}) : super(key: key);
  Widget getCalls(title, subTitle) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage("https://i.postimg.cc/YCH7Q2xS/02.jpg"),
        radius: 30,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(subTitle),
    );
  } // Masukkan coding disini

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
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            getCalls("Ayang", "(7) Hari ini 05.25"),
            SizedBox(
              height: 10,
            ),

            // Masukkan Coding disini jangan rubah lainnya
            //
            //
            //
            //
            //
            //
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
}
