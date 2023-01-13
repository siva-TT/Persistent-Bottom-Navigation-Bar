import "package:flutter/material.dart";

class HtmlPage extends StatefulWidget {
  const HtmlPage({final Key key}) : super(key: key);

  @override
  State<HtmlPage> createState() => _HtmlPageState();
}

class _HtmlPageState extends State<HtmlPage> {
  @override
  Widget build(final BuildContext context) => Scaffold(
      appBar: AppBar(
                   backgroundColor: Colors.black,
        title: const Text("Sample HTML Page"),
        centerTitle: true,
         actions: const [
    Icon(Icons.share),
  ],
      ),
      body: const Center(
        child:  Text("Html"),
      )
    );
}