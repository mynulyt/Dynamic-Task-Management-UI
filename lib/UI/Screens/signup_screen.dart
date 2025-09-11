import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/UI/widgets/backgorund_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgorundScreen(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              child: Column(
                key: _formKey,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 82),
                  Text(
                    "Join with US",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(height: 24),
                  TextFormField(decoration: InputDecoration(hintText: "Email")),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(hintText: "First name"),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Last Name"),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Mobile"),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(hintText: "Password"),
                  ),
                  SizedBox(height: 35),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Login',
                        style: TextStyle(color: Colors.green),
                        recognizer: TapGestureRecognizer()
                          ..onTap = _onTapLoginButton,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapLoginButton() {
    Navigator.pop(context);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
