import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);
  Widget getChats(title, subTitle) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage("https://i0.wp.com/www.cirebonkota.go.id/wp-content/uploads/2018/05/jokowi.jpg"),
        radius: 30,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(subTitle),
    );
  }

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
            getChats("Ayang", "Selamat pagi :)"),
            getChats("Cynthia", "Selamat pagi :)"),
            getChats("Fuput", "Selamat pagi :)"),
            getChats("Clara", "Selamat pagi :)"),
            getChats("Yurida", "Selamat pagi :)"),
            getChats("Yasfina", "Selamat pagi :)"),
            getChats("Galuh", "Selamat pagi :)"),
            getChats("Anggi", "Selamat pagi :)"),
            getChats("Arnis", "Selamat pagi :)"),
            getChats("Wulan", "Selamat pagi :)"),
            getChats("Laily", "Selamat pagi :)"),
            getChats("Nanda", "Selamat pagi :)"),
            getChats("Marita", "Selamat pagi :)"),
            getChats("Safira", "Selamat pagi :)"),
            getChats("Adelina", "Selamat pagi :)"),
            getChats("Intan", "Selamat pagi :)"),
            getChats("Vidia", "Selamat pagi :)"),
            getChats("Amalia", "Selamat pagi :)"),
            getChats("Adellita", "Selamat pagi :)"),
            getChats("Putri", "Selamat pagi :)"),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(
          Icons.chat_bubble,
          color: Colors.white,
        ),
      ),
    );
  }
}
