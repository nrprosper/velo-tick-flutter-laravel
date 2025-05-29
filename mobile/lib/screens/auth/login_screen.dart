import 'package:flutter/material.dart';
import 'package:mobile/screens/auth/auth_layout.dart';
import 'package:mobile/screens/auth/register_screen.dart';
import 'package:mobile/screens/layout.dart';
import 'package:mobile/utils/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      description:
          "Login to your account to start booking your bus tickets with ease.",
      elements: [
        SizedBox(
          height: 50,
          width: double.infinity,
          child: TextFormField(decoration: InputDecoration(hintText: "Email")),
        ),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Password",
              suffixIcon: Icon(Icons.remove_red_eye),
            ),
          ),
        ),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(DColors.primary6),
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Layout()),
              );
            },
            child: Text("Login"),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 4.0,
          children: [
            Text("Dont have an account ?"),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                );
              },
              child: Text(
                "Register",
                style: TextStyle(
                  color: DColors.primary6,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
