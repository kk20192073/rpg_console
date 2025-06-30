import 'characters.dart';
import 'dart:math';


Enemy generateRandomMonster() {
  final rng = Random();
  final monsters = [
    Enemy('고블린', 20, 6, 2),
    Enemy('오크', 30, 8, 4),
    Enemy('해골', 25, 7, 3),
    Enemy('슬라임', 15, 5, 1),
    Enemy('드래곤', 50, 12, 5),
  ];

  return monsters[rng.nextInt(monsters.length)];
}
