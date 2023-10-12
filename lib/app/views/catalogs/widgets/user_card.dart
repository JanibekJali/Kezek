import 'package:flutter/material.dart';

class UserCard extends StatefulWidget {
  UserCard(
      {Key? key,
      this.onTap,
      this.username,
      required this.subtitle,
      required this.description});

  void Function()? onTap;
  String? username;
  String description;
  String subtitle;

  @override
  _UserCardState createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: widget.onTap,
        child: Card(
          margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.03,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 1,
          child: Center(
            child: ListTile(
              // user profile picture
              leading: CircleAvatar(
                backgroundColor: Colors.blue[900],
                radius: 45,
                child: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        Image.asset('assets/images/polat.jpg').image),
              ),

              // user name
              title: Text(
                widget.username.toString(),
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              // last message
              subtitle: Text(
                widget.description,
                maxLines: 3,
              ),

              //Accept online
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue[900]),
                    child: Text(
                      'Accepts online',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.subtitle,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
