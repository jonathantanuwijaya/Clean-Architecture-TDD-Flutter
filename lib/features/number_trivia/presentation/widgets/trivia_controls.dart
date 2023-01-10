import 'package:clean_arch_tdd/features/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:clean_arch_tdd/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class TriviaControls extends StatefulWidget {
  const TriviaControls({
    Key? key,
  }) : super(key: key);

  @override
  State<TriviaControls> createState() => _TriviaControlsState();
}

class _TriviaControlsState extends State<TriviaControls> {
  final controller = TextEditingController();
  late String inputStr;

  @override
  Widget build(BuildContext context) {
    final i10n = S.of(context);
    return Column(
      children: [
        TextField(
          controller: controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: i10n.hintNumber,
          ),
          onChanged: (value) {
            inputStr = value;
          },
          onSubmitted: (_) {
            addConcrete();
          },
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                key: const Key('search-trivia'),
                onPressed: addConcrete,
                child: Text(i10n.search),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: ElevatedButton(
                key: const Key('get-random-trivia'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade500,
                ),
                onPressed: addRandom,
                child: Text(i10n.getRandomTrivia),
              ),
            ),
          ],
        )
      ],
    );
  }

  void addConcrete() {
    controller.clear();
    context.read<NumberTriviaBloc>().add(GetTriviaForConcreteNumber(inputStr));
  }

  void addRandom() {
    controller.clear();
    context.read<NumberTriviaBloc>().add(GetTriviaForRandomNumber());
  }
}
