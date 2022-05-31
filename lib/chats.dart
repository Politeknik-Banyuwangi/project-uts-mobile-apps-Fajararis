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
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5fGKks_ZOlVCtiZQV6ETawu9L0xk74WbsvQ&usqp=CAU"),
                    radius: 30,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 10,
                    child: Icon(
                      Icons.add,
                      size: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            getChats("Sasuke", "Just now"),
            getChats("Ronaldo", "Today, 2:8 pm"),
            getChats("Moh salah", "6 minutes ago"),
            getChats("Rossi", "25 minutes ago"),
            getChats("Torres", "Yestrday, 8:45 pm"),
            getChats("Omar Hassan", "Yestrday, 5:5 Am"),
            getChats("Sasuke", "Just now"),
            getChats("Ronaldo", "Today, 2:8 pm"),
            getChats("Moh salah", "6 minutes ago"),
            getChats("Rossi", "25 minutes ago"),
            getChats("Torres", "Yestrday, 8:45 pm"),
            getChats("Omar Hassan", "Yestrday, 5:5 Am"),
            getChats("Sasuke", "Just now"),
            getChats("Ronaldo", "Today, 2:8 pm"),
            getChats("Moh salah", "6 minutes ago"),
            getChats("Rossi", "25 minutes ago"),
            getChats("Torres", "Yestrday, 8:45 pm"),
            getChats("Omar Hassan", "Yestrday, 5:5 Am"),
            getChats("Sasuke", "Just now"),
            getChats("Ronaldo", "Today, 2:8 pm"),
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
