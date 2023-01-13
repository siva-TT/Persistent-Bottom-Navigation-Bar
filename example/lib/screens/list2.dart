import "package:flutter/material.dart";
import "package:persistent_bottom_nav_bar/persistent_tab_view.dart";
import "package:persistent_bottom_nav_bar_example_project/screens/html.dart";

class ListView2 extends StatefulWidget {
  const ListView2({final Key key}) : super(key: key);

  @override
  State<ListView2> createState() => _ListView2State();
}

class _ListView2State extends State<ListView2> {
  @override
  Widget build(final BuildContext context) => Scaffold(
       backgroundColor: Colors.black,
      appBar: AppBar(
           backgroundColor: Colors.black,
        title: const Text("Sample ListView 2"),
        leading: const BackButton(
            key: Key("Back"), color: Color.fromARGB(255, 255, 255, 255)),
      ),
        body: ListView(
               key: const Key("ListView"),
          padding: const EdgeInsets.all(8),
          // ignore: prefer_const_literals_to_create_immutables
          children: <Widget>[
             Card(
                color: const Color.fromARGB(38, 255, 255, 255),
              child: ListTile(
            title: const Text("Gift Shop", style: TextStyle(color: Colors.white),),
            subtitle: const Text("xxxxx xxxxx xxxxx",style: TextStyle(color: Colors.white),),
            leading: const CircleAvatar(backgroundColor: Colors.white,),
            trailing: const Icon(Icons.arrow_forward_ios_outlined, color: Colors.white,),
                    onTap: () {
                      PersistentNavBarNavigator.pushNewScreenWithRouteSettings(context,
                  withNavBar: true,
                  settings: const RouteSettings(name: "/html"),
                  screen: const HtmlPage());
                    },
                    // onTap: () => ,
                    )),
          ],
        ));
}