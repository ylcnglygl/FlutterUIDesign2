import 'package:flutter/material.dart';
import 'methods/daily_news_card.dart';
import 'methods/select_your_favourite_section.dart';

class DailyNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            dailyNewsCard(),
            selectYourFavouriteSection(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1 / 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildDailyNewsContainer(
                    context, Icons.sports_baseball, "Baseball"),
                buildDailyNewsContainer(
                    context, Icons.sports_basketball, "Basketball"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildDailyNewsContainer(
                    context, Icons.sports_esports, "E-Sports"),
                buildDailyNewsContainer(context, Icons.sports_golf, "Golf"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                buildDailyNewsContainer(context, Icons.sports_hockey, "Hockey"),
                buildDailyNewsContainer(
                    context, Icons.sports_motorsports, "Motorsports"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding buildDailyNewsContainer(
      BuildContext context, IconData icondata, String sportsName) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(12),
        ),
        height: MediaQuery.of(context).size.height * 2 / 10,
        width: MediaQuery.of(context).size.height * 2 / 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icondata),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(sportsName),
            ),
          ],
        ),
      ),
    );
  }
}
