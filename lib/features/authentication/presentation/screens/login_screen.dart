import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend_app_public/routes/routes.gr.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Email',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade700,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                initialValue: 'admin@example.com',
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  hintText: 'contoh@email.com',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon tulis email Anda';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              Text(
                'Password',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade700,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                initialValue: '12345678',
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  hintText: 'abc123',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon tulis password Anda';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Processing Data'),
                      ),
                    );
                  }
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).navigate(RegisterScreenRoute());
                },
                child: Text(
                  'Belum punya akun? Daftar sekarang!',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
