import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'Готово';
    if (resultScore <= 5) {
      resultText = 'Идём с нами';
      } else if (resultScore <= 12) {
        resultText = 'Пока рано';
} else if (resultScore <= 17) {
resultText = 'Ещё пару жизней, друг и приходи';
}

      }

    }

    return 
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'пойдём с нами',
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
