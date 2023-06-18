// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

// Project imports:
import 'package:themechanger/conf/values/edge_insets_constants.dart';
import 'package:themechanger/conf/values/space.dart';
import 'package:themechanger/conf/values/strings_constants.dart';
import 'package:themechanger/feature/switcher_screen/mobx/store.dart';
import 'package:themechanger/feature/switcher_screen/widgets/toggle/toggle.dart';
import 'package:themechanger/theme/text/text16/text_16_medium.dart';
import 'buttons/open_button.dart';
import 'items/history_item.dart';

class SwitcherContent extends StatelessWidget {
  //
  @override
  Widget build(BuildContext context) {
    final store = context.read<SwitcherStore>();

    return Column(
      children: [
        Expanded(
          child: ListView(
            shrinkWrap: true,
            padding: MyEdgeInsets.all16,
            children: [
              SwitcherToggle(),
              Space.v16,
              MyText16m(MyStrings.switchHistory),
              Space.v16,
              Observer(builder: (_) {
                final list = store.switchHistory;

                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: list.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final title = list[index];

                    return SwitcherHistoryItem(
                      title: title,
                    );
                  },
                );
              }),
            ],
          ),
        ),
        SwitcherOpenButton(),
      ],
    );
  }
}
