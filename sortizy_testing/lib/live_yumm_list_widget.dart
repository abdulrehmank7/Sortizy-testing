import 'package:flutter/material.dart';
import 'package:sortizy_testing/live_yumm_card_widget.dart';
import 'package:sortizy_testing/yumms.dart';

class LiveYummListWidget extends StatelessWidget {
  final List<Yumms?> allYumms;

  const LiveYummListWidget({Key? key, required this.allYumms})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemBuilder: (_, index) {
        if (index == 0) return const SizedBox(width: 10);
        return LiveYummCardWidget(yumm: allYumms[index - 1]!);
      },
      itemCount: allYumms.length + 1,
    );
  }
}
