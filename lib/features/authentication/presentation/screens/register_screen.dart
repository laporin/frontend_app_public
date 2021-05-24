import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_app_public/features/authentication/data/models/register_request_model.dart';
import 'package:frontend_app_public/features/authentication/presentation/bloc/authentication_bloc.dart';
import 'package:frontend_app_public/routes/routes.gr.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController(text: 'a');
  final _emailController = TextEditingController(text: 'a@b.a');
  final _passwordController = TextEditingController(text: '12345678');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loket Pendaftaran'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Nama',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey.shade700,
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  hintText: 'Bambang',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon tulis nama Anda';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
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
                    final registerData = RegisterRequestModel(
                      name: _nameController.text,
                      email: _emailController.text,
                      password: _passwordController.text,
                    );
                    BlocProvider.of<AuthenticationBloc>(context).add(
                      RegisterEvent(data: registerData),
                    );
                    context.router.navigate(HomeScreenRoute());
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Sukses mendaftar ke aplikasi'),
                      ),
                    );
                  }
                },
                child: Text(
                  'Bergabung ke Laporin',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  AutoRouter.of(context).navigate(LoginScreenRoute());
                },
                child: Text(
                  'Sudah punya akun?',
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
