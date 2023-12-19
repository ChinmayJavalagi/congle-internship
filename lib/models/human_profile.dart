import 'dart:math';

class HumanProfile {
  static const List<String> names = [
    'John Doe',
    'Alice Smith',
    'Bob Johnson',
    'Emily Brown',
    'David Wilson',
    'Sophia Lee',
  ];

  static const List<String> followers = [
    '30',
    '65',
    '52',
    '74',
    '100',
    '152',
  ];

  static List<String> getRandomProfileImages() {
    final Random random = Random();
    return List.generate(
      names.length,
          (index) => 'https://i.pravatar.cc/150?img=${random.nextInt(50)}',
    );
  }

}