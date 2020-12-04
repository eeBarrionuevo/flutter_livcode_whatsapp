import 'package:flutter/material.dart';
import 'package:flutter_app_whp_clone/models/chat_model.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dataListChat.length,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            ListTile(
                leading: CircleAvatar(
                  radius: 23,
                  backgroundColor: Colors.grey,
                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundImage: NetworkImage(dataListChat[index].avatarURL),
                ),
                title: Text(
                  dataListChat[index].name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  dataListChat[index].message,
                ),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      dataListChat[index].time,
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Theme.of(context).accentColor),
                      child: Center(
                        child: Text(
                          dataListChat[index].countMessage.toString(),
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ),
                    )
                    // CircleAvatar(
                    //   radius: 9,
                    //   backgroundColor: Theme.of(context).accentColor,
                    //   child: Text(
                    //     dataListChat[index].countMessage.toString(),
                    //     style: TextStyle(
                    //       color: Colors.white,
                    //       fontSize: 11
                    //     ),
                    //   ),
                    // )
                  ],
                )),
            Container(
              padding: EdgeInsets.only(left: 70, right: 15),
              child: Divider(
                height: 7,
                thickness: 0.4,
              ),
            )
          ],
        );
      },
    );
  }
}
