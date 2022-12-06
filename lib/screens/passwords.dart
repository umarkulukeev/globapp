import 'package:flutter/material.dart';
import '../data/sembast_bd.dart';
import '../data/shared_prefs.dart';
import '../models/password.dart';
import './password_detail.dart';

class PasssworsScreen extends StatefulWidget {
  const PasssworsScreen({Key? key}) : super(key: key);

  @override
  State<PasssworsScreen> createState() => _PasssworsScreenState();
}

class _PasssworsScreenState extends State<PasssworsScreen> {
  late SembastDB db;
  int settingColor = 0xff1976d2;
  double fontSize = 16;
  SPSettings settings = SPSettings();

  @override
  void initState() {
    db = SembastDB();
    settings.init().then((value) {
      setState(() {
        settingColor = settings.getColor();
        fontSize = settings.getFontSize();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passwords List'),
        backgroundColor: Color(settingColor),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Color(settingColor),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return PasswordDetailDialog(Password('', ''), true);
              });
        },
      ),
    );
  }
}
