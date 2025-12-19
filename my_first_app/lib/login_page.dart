import 'package:flutter/material.dart';
import 'package:my_first_app/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void onRegisterPage(BuildContext context) {
    // Navigator.pop(context);
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) =>
    //         RegisterPage("Login page ees irev"),
    //   ),
    // );
    Navigator.popAndPushNamed(context, "register");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () =>
                  onRegisterPage(context),
              child: Text("Register Page oroh"),
            ),
            Text("Login Page"),
          ],
        ),
      ),
    );
  }
}
