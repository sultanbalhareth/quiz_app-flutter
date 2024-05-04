class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffleAnswers() {
    final shuffledList = List.of(
        answers); // method used to copy another list .. because if  using shuffle directly will mutate the original list :)
    shuffledList.shuffle();
    return shuffledList;
  }
}
