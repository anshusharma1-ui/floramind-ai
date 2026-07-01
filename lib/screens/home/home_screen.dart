import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../widgets/greeting_header.dart';
import '../../widgets/search_bar_widget.dart';
import '../../widgets/hero_plant_card.dart';
import '../../widgets/quick_actions_section.dart';
import '../../widgets/weather_card.dart';
import '../../widgets/today_tasks_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: const [

               GreetingHeader(),

                SizedBox(height: 20),

                SearchBarWidget(),

                SizedBox(height: 20),

                HeroPlantCard(),

                SizedBox(height: 20),

                QuickActionsSection(),

                SizedBox(height: 20),

                WeatherCard(),

                SizedBox(height: 20),

                TodayTasksCard(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}