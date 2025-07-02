// 추상 클래스 Character - 플레이어나 적(Enemy)의 공통 속성과 동작을 정의함
abstract class Character {
  // 캐릭터의 이름
  String name;
  // 체력
  int hp;
  // 공격력
  int attack;
  // 방어력
  int defense;

  // 생성자: 이름, 체력, 공격력, 방어력을 초기화
  Character(this.name, this.hp, this.attack, this.defense);

  // 캐릭터가 살아있는지 여부를 반환 (체력이 0보다 크면 살아있음)
  bool get isAlive => hp > 0;

  // 캐릭터의 현재 상태(스탯)를 출력
  void showStats() {
    print('$name - 체력: $hp, 공격력: $attack, 방어력: $defense');
  }
}

// Player 클래스는 Character를 상속받음 (플레이어 캐릭터를 나타냄)
class Player extends Character {
  // 상위 클래스(Character)의 생성자를 그대로 사용
  Player(super.name, super.hp, super.attack, super.defense);
}

// Enemy 클래스도 Character를 상속받음 (적 캐릭터를 나타냄)
class Enemy extends Character {
  // 상위 클래스(Character)의 생성자를 그대로 사용
  Enemy(super.name, super.hp, super.attack, super.defense);
}

[Uploading characters.dart…]()
