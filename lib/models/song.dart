class Song {
  final int index;
  final String name,by,image;

  Song(
      {required this.index,
      required this.image,
      required this.by,
      required this.name});
}

final List<Song> songsList = [
  Song(index: 0, name: 'Starboy',by:  'by Daft Punk',image: 'assets/images/starboy.png'),
  Song(index: 1, name: 'Girls Like You',by: 'by Maroon 5',image: 'assets/images/girl_like_you.png'),
  Song(index: 2, name: 'Senorit',by: 'by Camila & Shawn',image: 'assets/images/senorit.png'),
  Song(index: 3, name: 'Love me like you do',by: 'by Ellie Goulding',image: 'assets/images/love_me_like.png'),
  Song(index: 4, name: 'Happier',by: 'by Marshmello',image: 'assets/images/happier.png'),
  Song(index: 5, name: 'Shape of you',by: 'by Ed Sheeran',image: 'assets/images/shape_of_you.png'),
];