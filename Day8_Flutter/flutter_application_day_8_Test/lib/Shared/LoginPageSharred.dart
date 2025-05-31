import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPageSharred extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPageSharred({super.key});

  Future<void> login(BuildContext context) async {
    print(passwordController);
    // print()
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // هنا ممكن تضيف شروط تحقق من اليوزر والباسورد
    await prefs.setBool('loggedIn', true);
    await prefs.setString('userName', usernameController.text);
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: "Username"),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => login(context),
              child: Text("Login"),
            )
          ],
        ),
      ),
    );
  }
}
