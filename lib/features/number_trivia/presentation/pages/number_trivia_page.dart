import 'package:clean_arch_tdd/features/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:clean_arch_tdd/features/number_trivia/presentation/widgets/widgets.dart';
import 'package:clean_arch_tdd/injection_container.dart';
import 'package:clean_widget/clean_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/movieapp.dart';

class NumberTriviaPage extends StatelessWidget {
  const NumberTriviaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => serviceLocator<NumberTriviaBloc>(),
      child: const NumberTriviaBodyPage(),
    );
  }
}

class NumberTriviaBodyPage extends StatelessWidget {
  const NumberTriviaBodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// simple boolean value for test purpose
    bool hasRegistered = true;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Number Trivia Generator')),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 10),
              BlocBuilder<NumberTriviaBloc, NumberTriviaState>(
                builder: (context, state) {
                  if (state is Empty) {
                    return const MessageDisplay(message: 'Start searching');
                  } else if (state is Loading) {
                    return const LoadingWidget(
                      key: Key('loading-widget'),
                    );
                  } else if (state is Loaded) {
                    return TriviaDisplay(numberTrivia: state.trivia);
                  } else if (state is Error) {
                    return MessageDisplay(message: state.message);
                  }
                  return SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 3,
                    child: const Placeholder(),
                  );
                },
              ),
              const SizedBox(height: 20),
              const TriviaControls(),
              CleanButton(
                  onPressed: () {
                    if (hasRegistered) {
                      setupAndRun();
                      hasRegistered = false;
                    }
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AppWidget()));
                  },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
