
import 'package:app/provider/dashboard_providers.dart';
import 'package:app/view/page/beranda_view.dart';
import 'package:app/view/page/berita_view.dart';
import 'package:app/view/page/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    final panels = [
      BerandaView(),
      NewsView(),
      SettingView(),
    ];
    return Consumer<dashboardProviders>(builder: (context, prov, w) {
      return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              onTap: (value) {
                prov.UbahTab(value);
                print('tab $value');
              },
              currentIndex: prov.tabaktif,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.house), label: 'beranda'),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.newspaper), label: 'berita'),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.gear), label: 'pengaturan'),
              ]),
          body: panels[prov.tabaktif]);
    });
  }
}
