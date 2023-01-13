import "package:flutter/material.dart";
import "package:persistent_bottom_nav_bar_example_project/screens/list1.dart";

class HomePage extends StatefulWidget {
  // ignore: prefer_final_parameters
  const HomePage(
      {final Key key,
      this.menuScreenContext,
      this.onScreenHideButtonPressed,
      this.hideStatus = false})
      : super(key: key);
  final BuildContext menuScreenContext;
  final VoidCallback onScreenHideButtonPressed;
  final bool hideStatus;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  // ignore: prefer_final_parameters, use_decorated_box
  Widget build(BuildContext context) => Container(
        decoration: const BoxDecoration(
            // image: DecorationImage(
            //     image: AssetImage("assets/images/home_bg.png"),
            //   fit: BoxFit.fill)
            ),
        child: Scaffold(
                 backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            title: const Text(
              "Persistent Bottom Nav-Bar",
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (final context) => const ListView1(),
                ));
              },
              child: const Icon(Icons.menu // add custom icons also
                  ),
            ),
          ),
          // ignore: avoid_unnecessary_containers
          body: Container(
            child: ListView(
              // ignore: avoid_redundant_argument_values
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height /
                      2.8, //Constant.quickviewwidget,
                  //    height: Constant.quickviewwidget,

                  /*    child: BlocProvider(
                    create: (_) => QuickViewBloc(locator()),
                    child: QuickViewItem()),**/
                ),
                //   InterestStateWidget(),

                /*   BlocProvider(
                  create: (_) => GiftShopBloc(locator()),
                  child: const GiftshopList()),

              BlocProvider(
                  create: (_) => InterestBloc(locator()),
                  child: const InterestList()),**/

                // WebView1(),
                //  WebView(),
              ],
            ),
          ),
        ),
      );
}
