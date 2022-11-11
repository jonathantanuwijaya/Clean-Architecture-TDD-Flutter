import 'package:clean_arch_tdd/features/number_trivia/domain/entities/number_trivia.dart';

class NumberTriviaDto extends NumberTrivia {
  const NumberTriviaDto({
    required int number,
    required String text,
  }) : super(text: text, number: number);

  factory NumberTriviaDto.fromJson(Map<String, dynamic> json) =>
      NumberTriviaDto(
        number: (json['number'] as num).toInt(),
        text: json['text'],
      );

  Map<String, dynamic> toJson() => {
        'text': text,
        'number': number,
      };
}
