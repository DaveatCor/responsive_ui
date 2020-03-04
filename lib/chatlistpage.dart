import 'package:flutter/material.dart';

class ChatListPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ChatListPageState();
  }
}

class ChatListPageState extends State<ChatListPage>{

  Widget build(BuildContext context){
    var hasDetailPage = MediaQuery.of(context).orientation == Orientation.landscape;
    Widget child = _buildChat(context, 3);
    if (hasDetailPage){
      child = Row(
        children: <Widget>[
          SizedBox(
            width: 250,
            height: double.infinity,
            child: Text(""),
          ),
          Expanded(
            child: _buildChat(context, 3),
          )
        ],
      );
    } else {
      child = _buildList(context, 3);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Chats"),
      ),
      body: SafeArea(
        child: child,
      ),
    );
  }
}

Widget _buildList(BuildContext context, int amountIndex){
  return ListView.builder(
    itemCount: amountIndex,
    itemBuilder: (context, int index){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text("Androidy Googler, Swity macky, You D, Best"),
            subtitle: Text("Calm down peeps :)"),
          ),
          Divider(color: Colors.grey,)
        ],
      );
    },
  );
}

Widget _buildChat(BuildContext context, int index){
  return Text('Hello, is this a flutter tutorial');
}