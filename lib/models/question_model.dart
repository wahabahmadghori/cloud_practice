class QuestionModel {
  final String question;
  final String optionA;
  final String optionB;
  final String optionC;
  final String optionD;
  final String answer;

  QuestionModel({
    required this.question,
    required this.optionA,
    required this.optionB,
    required this.optionC,
    required this.optionD,
    required this.answer,
  });

  static Map<String, dynamic> toMap(QuestionModel q) {
    Map<String, dynamic> question = {
      'question': q.question,
      'optionA': q.optionA,
      'optionB': q.optionB,
      'optionC': q.optionC,
      'optionD': q.optionD,
      'answer': q.answer,
    };
    return question;
  }
}
