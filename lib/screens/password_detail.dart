import 'package:flutter/material.dart';
import '../data/sembast_bd.dart';
import '../models/password.dart';
import './passwords.dart';

class PasswordDetailDialog extends StatefulWidget {
  final Password password;
  final bool isNew;

  PasswordDetailDialog(this.password, this.isNew);

  @override
  State<PasswordDetailDialog> createState() => _PasswordDetailDialogState();
}

class _PasswordDetailDialogState extends State<PasswordDetailDialog> {
  final TextEditingController txtName = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    String title = (widget.isNew) ? 'Insert New Password' : 'Edit Password';
    txtName.text = widget.password.name;
    txtPassword.text = widget.password.password;
    return AlertDialog(
      title: Text(title),
      content: Column(
        children: [
          TextField(
            controller: txtName,
            decoration: InputDecoration(
              hintText: 'Description',
            ),
          ),
          TextField(
            controller: txtPassword,
            obscureText: hidePassword,
            decoration: InputDecoration(
              hintText: 'Password',
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                },
                icon: hidePassword ? Icon(Icons.visibility) : Icon(Icons.vibration_outlined),
              )
            ),
          )
        ],
      ),
    );
  }
}
