import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/feature/application/auth/auth_bloc.dart';
import 'package:movieapp/feature/presentation/home/home_page.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.authFailureOrSucessOption.fold(
            () => {},
            (either) => either.fold((failure) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(failure.map(
                        invalidEmailAndPass: (_) =>
                            'Invalid Email or Password')),
                  ));
                }, (_) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => HomePage()));
                }));
      },
      builder: (context, state) => Form(
        key: _formKey,
        autovalidateMode: state.showErrorMessages,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            children: [
              const Text(
                'Welcome to Movie App',
                style: TextStyle(fontSize: 22, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    fillColor: Colors.white,
                    focusColor: Colors.white,
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email'),
                autocorrect: false,
                onChanged: (value) =>
                    context.read<AuthBloc>().add(AuthEvent.emailChanged(value)),
                validator: (_) => state.emailAddress.value.fold(
                    (l) => l.maybeMap(
                        invalidEmail: (_) => 'Invalid Email',
                        orElse: () => null),
                    (_) => null),
              ),
              const SizedBox(
                height: 12,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.password),
                    labelText: 'Password'),
                autocorrect: false,
                onChanged: (value) => context
                    .read<AuthBloc>()
                    .add(AuthEvent.passwordChanged(value)),
                validator: (_) => context
                    .read<AuthBloc>()
                    .state
                    .password
                    .value
                    .fold(
                        (l) => l.maybeMap(
                            shortPassword: (_) => 'Short Password',
                            orElse: () => null),
                        (_) => null),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  debugPrint('button clicked');
                  context.read<AuthBloc>().add(const AuthEvent.signIn());
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                    height: 45,
                    color: Colors.deepPurpleAccent,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text('Sign In',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(
                  height: 8,
                ),
                const LinearProgressIndicator(
                  backgroundColor: Colors.deepPurpleAccent,
                  value: null,
                )
              ]
            ],
          ),
        ),
      ),
    );
  }
}
