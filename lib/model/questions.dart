class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question(
      {required this.id,
      required this.question,
      required this.answer,
      required this.options});
}

const List sample_questions = [
  {
    "id": 1,
    "question": "NEAR Protocol es una blockchain del tipo ________",
    "options": ['PoW', 'Pos', 'PoPS', 'PoH'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question": "Tiempo entre bloques de NEAR Protocol",
    "options": ['1 segundo', '2 segundos', '10 segundos', 'Inmediato'],
    "answer_index": 0,
  },
  {
    "id": 3,
    "question": "NEAR Protocol es una blockchain del tipo ________",
    "options": ['PoW', 'Pos', 'PoPS', 'PoH'],
    "answer_index": 1,
  },
  {
    "id": 4,
    "question": "Tiempo entre bloques de NEAR Protocol",
    "options": ['1 segundo', '2 segundos', '10 segundos', 'Inmediato'],
    "answer_index": 0,
  },
  {
    "id": 5,
    "question": "Pregunta de ejemplo número 5",
    "options": ['1 segundo', '2 segundos', '10 segundos', 'Inmediato'],
    "answer_index": 2,
  },
];
