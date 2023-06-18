// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:themechanger/conf/values/space.dart';
import 'package:themechanger/theme/text/text16/text_16_medium.dart';

class SwitcherHistoryItem extends StatelessWidget {
  //
  final String title;

  const SwitcherHistoryItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText16m(
          title,
        ),
        Space.v8,
      ],
    );
  }
}
