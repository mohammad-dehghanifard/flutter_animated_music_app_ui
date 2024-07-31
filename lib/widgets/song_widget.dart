import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animated_music_app/models/song.dart';

class SongWidget extends StatelessWidget {
  const SongWidget({super.key, required this.song, required this.count});
  final Song song;
  final int count;
  @override
  Widget build(BuildContext context) {
    const double imageSize = 120;
    return count == 2? _buildHorizontalSongItem(imageSize): _buildVerticalSongItem(imageSize);
  }

  Widget _buildHorizontalSongItem(double imageSize) {
    return Column(
    children: [
      // image
      Stack(
        children: [
          Image.asset(song.image,width: imageSize,height: imageSize),

          ClipRRect(
            child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                ),
              child: Container(
                width: imageSize,
                  height: imageSize + 20,
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Image.asset(song.image,width: imageSize,height: imageSize)),
            ),
          )
        ],
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(song.name,style: const TextStyle(fontSize: 12,color: Colors.grey)),
              Text(song.by,style: const TextStyle(fontSize: 12,color: Colors.redAccent)),
            ],
          ),
        ),
      )
    ],
      );
  }

  Widget _buildVerticalSongItem(double imageSize) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(song.name,
                  style: const TextStyle(fontSize: 16, color: Colors.grey)),
              Text(song.by,
                  style: const TextStyle(fontSize: 16, color: Colors.redAccent)),
            ],
          ),
          const SizedBox(width: 8),
      // image
          Stack(
            children: [
              Image.asset(song.image, width: imageSize, height: imageSize),
              ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                  ),
                  child: Container(
                      width: imageSize,
                      height: imageSize + 20,
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Image.asset(song.image,
                          width: imageSize, height: imageSize)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
