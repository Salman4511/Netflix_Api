import 'package:flutter/material.dart';
import 'package:netflix_api/core/colors/colors.dart';
import 'package:netflix_api/presentation/downloads/screen_downloads.dart';
import 'package:netflix_api/presentation/fast_laugh/screen_fast_laugh.dart';
import 'package:netflix_api/presentation/home/screen_home.dart';
import 'package:netflix_api/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflix_api/presentation/new_and_hot/screen_new_and_hot.dart';
import 'package:netflix_api/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});
  
  final _pages = [
    const ScreenHome(),
    const ScreenNewAndHot(),
    const ScreenFastLaugh(),
    const ScreenSearch(),
    const ScreenDownloads(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangeNotifier, builder:(context, int index, _) {
          return _pages[index];
        },),
      )
      ,bottomNavigationBar:const BottomNavWidget(),
    );
  }
}