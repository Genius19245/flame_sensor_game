import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:sensors_plus/sensors_plus.dart';

class MyGame extends FlameGame with HasGameRef {
  late final Ball ball;
  double x = 0;
  double y = 0;
  double z = 0;
  String direction = '';
  @override
  Future<void> onLoad() async {
    add(ball = Ball(sprite: await loadSprite('elf.png')));
  }

  @override
  void update(double dt) {
    gyroscopeEvents.listen((GyroscopeEvent event) {
      print(event);
      if (event.x > 0.001) {
        ball.x -= event.x;
        print('lets go');
      }
    });

    print(direction);
    // TODO: implement update
    super.update(dt);
  }
}

class Ball extends SpriteComponent {
  Ball({super.sprite}) {
    size = Vector2(69.0, 128.0);
    anchor = Anchor.center;
    position = Vector2(200, 300);
  }
}
