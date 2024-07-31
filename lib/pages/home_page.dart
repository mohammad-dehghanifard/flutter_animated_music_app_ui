import 'package:flutter/material.dart';
import 'package:flutter_animated_music_app/models/song.dart';
import 'package:flutter_animated_music_app/widgets/song_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 1;
  @override
  Widget build(BuildContext context) {
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        count == 1 ? count = 2 : count = 1;
                      });
                    },
                      child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 600),
                          child:  count == 2 ? Image.asset("assets/images/icon.png") : Image.asset("assets/images/list_icon.png" )
                      ))
                ],
              ),
            ),
            // grid view
            Expanded(
                child: GridView.count(
              childAspectRatio: count == 1 ? 2.8 : 1,
              crossAxisCount: count,
              children: List.generate(songsList.length, (index) => SongWidget(song: songsList[index],count: count,))
            ))
          ],
        ),
      ),
    );
  }
}
