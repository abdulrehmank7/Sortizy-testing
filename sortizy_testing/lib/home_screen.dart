import 'package:flutter/material.dart';
import 'package:moengage_flutter/moengage_flutter.dart';
import 'package:sortizy_testing/live_yumm_list_widget.dart';
import 'package:sortizy_testing/yumms.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _initMixpanel();

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 350,
          child: LiveYummListWidget(allYumms: yummsList),
        ),
      ),
    );
  }

  void _initMixpanel() {
    final MoEngageFlutter moengage = MoEngageFlutter();
    moengage.initialise();
    moengage.showInApp();
  }
}
