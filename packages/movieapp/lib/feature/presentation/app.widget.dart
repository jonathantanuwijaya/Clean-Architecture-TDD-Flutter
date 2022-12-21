import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/feature/application/auth/auth_bloc.dart';
import 'package:movieapp/feature/application/movie/movie_bloc.dart';
import 'package:movieapp/feature/application/search/search_bloc.dart';
import 'package:movieapp/feature/presentation/home/home_page.dart';
import 'package:movieapp/feature/presentation/sign_in_page/sign_in_page.dart';
import 'package:movieapp/injection.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
                getIt<MovieBloc>()..add(const MovieEvent.gettingAll())),
        BlocProvider(create: (_) => getIt<SearchBloc>()),
        BlocProvider(
            create: (_) => getIt<AuthBloc>()..add(AuthEvent.checkAuthStatus()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cinema App',
        theme: ThemeData(
            primarySwatch: Colors.cyan,
            backgroundColor: Colors.grey,
            textTheme: Theme.of(context).textTheme.apply(
                  bodyColor: const Color(0xffffffff),
                  displayColor: const Color(0xff22215B),
                )),
        home: const SplashPage(),
      ),
    );
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        (state.authenticated)
            ? Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomePage()))
            : Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => SignInPage()));
      },
      child: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: const Center(child: CircularProgressIndicator()),

      ),
    );
  }
}
