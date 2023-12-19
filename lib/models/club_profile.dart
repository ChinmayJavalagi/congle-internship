import 'dart:math';

class ClubProfile {
  static const List<String> clubNames = [
    'Techies',
    'Creators',
    'Sports Fans',
    'Music Crew',
    'Book Club',
    'Fit Folks',
  ];

  static List<String> getRandomClubImages() {
    final Random random = Random();
    return List.generate(
      clubNames.length,
          (index) => 'https://placekitten.com/150/150?image=${random.nextInt(10)}',
    );
  }

  static const List<String> clubTaglines = [
    'Tech Innovation',
    'Create Together',
    'Love for Sports',
    'Music Harmony',
    'Bookish Delights',
    'Stay Fit, Stay Fantastic!',
  ];
}