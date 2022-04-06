import 'package:checkpoint_1/src/components/labeled_text.dart';
import 'package:checkpoint_1/src/components/standard_page.dart';
import 'package:checkpoint_1/src/utils/ui_text.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String id;
  final String question;
  final String answer;
  bool? last;

  Question(
      {Key? key,
      required this.id,
      required this.question,
      required this.answer})
      : super(key: key) {
    last = int.parse(id) == questions.length;
  }

  @override
  Widget build(BuildContext context) {
    return StandardPage(appBarTitle: "Questão " + id, children: [
      Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Text(question,
            style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontSize: 20,
                  height: 1.5,
                )),
      ),
      Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: LabeledText(label: "Resposta: ", text: answer),
      ),
      if (!last!)
        SizedBox(
          child: ElevatedButton(
              onPressed: () {
                var question = questions[int.parse(id)];
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Question(
                              id: question["id"]!,
                              question: question["question"]!,
                              answer: question["answer"]!,
                            )));
              },
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Text("Próxima Questão"),
              )),
          width: double.infinity,
        )
    ]);
  }
}
