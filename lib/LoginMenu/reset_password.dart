import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ResetPasswordPage extends StatefulWidget {
  @override
  _ResetPasswordPageState createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final TextEditingController emailController = TextEditingController();
  String? _errorMessage;

  Future<void> _resetPassword(BuildContext context) async {
    if (emailController.text.isEmpty) {
      setState(() {
        _errorMessage = "Please enter your email to reset password.";
      });
      return;
    }

    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: emailController.text);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Password reset email sent.")));
    } catch (e) {
      setState(() {
        _errorMessage = "Failed to send password reset email: $e";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reset Password"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email",
                errorText: _errorMessage,
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                _resetPassword(context);
              },
              child: Text("Reset Password"),
            ),
          ],
        ),
      ),
    );
  }
}
