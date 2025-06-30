abstract class Character {
  String name;
  int hp;
  int attack;
  int defense;

  Character(this.name, this.hp, this.attack, this.defense);

  bool get isAlive => hp > 0;

  void showStats() {
    print('$name - 체력: $hp, 공격력: $attack, 방어력: $defense');
  }
}

class Player extends Character {
  Player(super.name, super.hp, super.attack, super.defense);
}

class Enemy extends Character {
  Enemy(super.name, super.hp, super.attack, super.defense);
}
