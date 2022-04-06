import 'package:checkpoint_1/src/utils/ui_text.dart';
import 'package:flutter/material.dart';
import '../../components/input_text.dart';
import '../../components/labeled_text.dart';
import '../../components/standard_page.dart';
import '../../theme/themes.dart';
import '../question_page/question_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StandardPage(
        appBarTitle: "Checkpoint | Widgets e construção de tela",
        children: [
          GestureDetector(
            onTap: () {
              var question = questions[0];
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Question(
                          id: question["id"]!,
                          question: question["question"]!,
                          answer: question["answer"]!)));
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Image.asset("assets/question.png"),
            ),
          ),
          InputText(label: "E-mail", margin: const EdgeInsets.only(bottom: 15)),
          InputText(
              label: "Senha",
              hideContent: true,
              margin: const EdgeInsets.only(bottom: 40)),
          Container(
            decoration: BoxDecoration(border: standardBorder(context)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  LabeledText(label: "NOME: ", text: "THIAGO ALVES DA SILVA"),
                  LabeledText(label: "RM: ", text: "86070"),
                  LabeledText(label: "CURSO: ", text: "3SIR")
                ],
              ),
            ),
          ),
        ]);
  }

  Border standardBorder(BuildContext context) {
    final Color borderColor = Theme.of(context).brightness == Brightness.light
        ? materialGray.shade600
        : materialGray.shade100;
    Border border = Border(
        top: BorderSide(width: 1, color: borderColor),
        right: BorderSide(width: 1, color: borderColor),
        left: BorderSide(width: 1, color: borderColor),
        bottom: BorderSide(width: 1, color: borderColor));
    return border;
  }
}
