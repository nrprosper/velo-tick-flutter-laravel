import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile/data/providers.dart';
import 'package:mobile/data/requests/login_request.dart';
import 'package:mobile/screens/auth/auth_layout.dart';
import 'package:mobile/screens/auth/register_screen.dart';
import 'package:mobile/screens/layout.dart';
import 'package:mobile/utils/colors.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginNotifierProvider);

    ref.listen(loginNotifierProvider, (previous, current) {
      if (current.isSuccess && (previous == null || !previous.isSuccess)) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Layout()),
        );
      } else if (current.isError && (previous == null || !previous.isError)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(current.error.toString())),
        );
      }
    });

    return AuthLayout(
      description:
      "Login to your account to start booking your bus tickets with ease.",
      child: Column(
        spacing: 20.0,
        children: [
          Form(
            key: _formKey,
            child: Column(
              spacing: 20.0,
              children: [
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(hintText: "Email"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscurePassword,
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: _togglePasswordVisibility,
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(DColors.primary6),
              ),
              onPressed: loginState.isLoading
                  ? null
                  : () {
                if (_formKey.currentState!.validate()) {
                  final request = LoginRequest(
                    email: _emailController.text,
                    password: _passwordController.text,
                  );
                  ref.read(loginNotifierProvider.notifier).login(request);
                }
              },
              child: loginState.isLoading
                  ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              )
                  : const Text("Login"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account? "),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const RegisterScreen()),
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
      ),
    );
  }
}