import 'package:DevQuiz/challenge/widgets/awnser/awnser_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  QuizWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: AppTextStyles.heading,
          ),
          SizedBox(
            height: 24,
          ),
          AwnserWidget(
              title: "Kit de desenvolvimento de interface de usuário",
              isRight: false,
              isSelected: false),
          AwnserWidget(
              title: "Kit de desenvolvimento de interface de usuário",
              isRight: true,
              isSelected: true),
          AwnserWidget(
              title: "Kit de desenvolvimento de interface de usuário",
              isRight: false,
              isSelected: true),
          AwnserWidget(
              title: "Kit de desenvolvimento de interface de usuário",),
        ],
      ),
    );
  }
}
