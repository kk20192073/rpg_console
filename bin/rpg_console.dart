import 'dart:io';
import 'dart:math';
import 'characters.dart';
import 'monsters.dart';

void main() {
  final rng = Random();

  stdout.write('캐릭터의 이름을 입력하세요: ');
  String name = stdin.readLineSync() ?? '용사';
  final player = Player(name, 50, 10, 5);

  print('\n게임을 시작합니다!');
  player.showStats();

  while (true) {
    Enemy monster = generateRandomMonster();
    print('\n새로운 몬스터가 나타났습니다!');
    monster.showStats();

    while (monster.isAlive && player.isAlive) {
      print('\n${player.name}의 턴');
      stdout.write('행동을 선택하세요 (1: 공격, 2: 방어): ');
      String input = stdin.readLineSync() ?? '1';

      if (input == '1') {
        int damage = max(1, player.attack - monster.defense);
        monster.hp -= damage;
        print('${player.name}이(가) ${monster.name}에게 $damage의 데미지를 입혔습니다.');
      } else if (input == '2') {
        int recovered = rng.nextInt(7) + 3;
        player.hp += recovered;
        print('${player.name}이(가) 방어 태세를 취하여 $recovered 만큼 체력을 얻었습니다.');
      }

      if (!monster.isAlive) {
        print('${monster.name}을(를) 물리쳤습니다!');
        break;
      }

      print('\n${monster.name}의 턴');
      int damage = max(1, monster.attack - player.defense);
      player.hp -= damage;
      print('${monster.name}이(가) ${player.name}에게 $damage의 데미지를 입혔습니다.');

      if (!player.isAlive) {
        print('${player.name}이(가) 쓰러졌습니다!');
        return;
      }
    }

    print('\n축하합니다! 모든 몬스터를 물리쳤습니다.');
    stdout.write('다음 몬스터와 싸우시겠습니까? (y/n): ');
    String? cont = stdin.readLineSync();
    if (cont == null || cont.toLowerCase() != 'y') {
      break;
    }
  }
}


