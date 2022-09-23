import 'package:flutter/material.dart';
import '../view/widgets/buttons.dart';
import '../view/Homepage.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff050B18),
          elevation: 1,
          leadingWidth: 44,
          leading: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              backgroundColor: Color(0xff7560E3),
              radius: 28,
              child: CircleAvatar(
                radius: 21,
                backgroundImage: AssetImage("assets/images/Ellipse 2 (1).png"),
              ),
            ),
          ),
          title: Transform(
            transform: Matrix4.translationValues(1.0, 0.0, 0.0),
            child: const Text(
              "John",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 23),
            ),
          ),
          actions: [searchButton(), notificationButton()],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(1.0),
              child: Container(
                color: const Color(0xff2B2D47),
                height: 1.0,
              )),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              border: Border(
                  top: BorderSide(color: Color(0xff2B2D47), width: 1.0))),
          child: const Material(
            color: Color(0xff050B18),
            child: TabBar(
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Color(0xff7560E3), width: 5.0),
                insets: EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 40.0),
              ),
              tabs: [
                Tab(
                    child: ImageIcon(
                  AssetImage("assets/images/entypo_list.png"),
                  color: Color(0xff7560E3),
                )),
                Tab(
                    child: ImageIcon(
                  AssetImage("assets/images/Group.png"),
                  color: Color(0xff696C75),
                )),
                Tab(
                    child: Icon(
                  Icons.favorite_outline,
                  color: Color(0xff696C75),
                )),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Homepage(),
            Icon(Icons.hourglass_empty, size: 350),
            Icon(Icons.hourglass_bottom, size: 350),
          ],
        ),
      ),
    );
  }
}
