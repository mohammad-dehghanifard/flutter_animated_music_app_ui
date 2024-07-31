import 'package:flutter/material.dart';
import 'package:flutter_animated_music_app/models/song.dart';
import 'package:flutter_animated_music_app/widgets/song_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    int count = 1;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // App bar
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                children: [
                  const Text(
                    "لیست آهنگ ها",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  Image.asset("assets/images/icon.png")
                ],
              ),
            ),
            // grid view
            Expanded(
                child: GridView.count(
              childAspectRatio: 2.8,
              crossAxisCount: count,
              children: List.generate(songsList.length, (index) => SongWidget(song: songsList[index],count: count,))
            ))
          ],
        ),
      ),
    );
  }
}
