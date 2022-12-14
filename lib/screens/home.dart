import 'package:flutter/material.dart';
import '../data/shared_prefs.dart';
import '../screens/passwords.dart';
import '../screens/settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int settingColor = 0xff1976d2;
  double fontSize = 16;
  SPSettings settings = SPSettings();

  @override
  void initState() {
    getSettings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getSettings(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(settingColor),
            title: Text('GlobApp'),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                    child: Text('GlobApp Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                    )),
                  decoration: BoxDecoration(
                    color: Color(settingColor),
                  ),
                )
              ],
            ),
          ),
        )
        }
    );
  }
}
