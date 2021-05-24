import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_app_public/config/routes/routes.gr.dart';
import 'package:frontend_app_public/features/authentication/data/models/login_request_model.dart';
import 'package:frontend_app_public/features/authentication/presentation/bloc/authentication_bloc.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController(text: 'admin@example.com');
  final _passwordController = TextEditingController(text: '12345678');

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
                controller: _emailController,
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
                controller: _passwordController,
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
                    final loginData = LoginRequestModel(
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                    BlocProvider.of<AuthenticationBloc>(context).add(
                      LoginEvent(data: loginData),
                    );
                    context.router.navigate(HomeScreenRoute());
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Sukses masuk ke aplikasi'),
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
