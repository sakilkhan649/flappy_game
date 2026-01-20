import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import '../game/assets.dart';
import '../game/flappay_bird_game.dart';

class Background extends SpriteComponent with HasGameRef<FlappyBirdGame> {
  Background();
  Future<void> onLoad() async {
    final backgorund = await Flame.images.load(Assets.backgorund);
    size = gameRef.size;
    sprite = Sprite(backgorund);
  }
}
