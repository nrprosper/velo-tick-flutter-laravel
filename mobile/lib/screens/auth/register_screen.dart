import 'package:flutter/material.dart';
import 'package:mobile/screens/auth/auth_layout.dart';
import 'package:mobile/screens/auth/login_screen.dart';
import 'package:mobile/utils/colors.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthLayout(
      description:
          "Create an account to start booking your bus tickets with ease.",
      elements: [
        SizedBox(
          height: 50,
          width: double.infinity,
          child: TextFormField(
            decoration: InputDecoration(hintText: "First name"),
          ),
        ),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: TextFormField(
            decoration: InputDecoration(hintText: "Last name"),
          ),
        ),
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
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Confirm Password",
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
            onPressed: () {},
            child: Text("Register"),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 4.0,
          children: [
            Text("Already have an account ?"),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                "Login",
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
