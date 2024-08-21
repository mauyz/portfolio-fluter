import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scroll_controller_offset.g.dart';

@Riverpod(keepAlive: true)
class ScrollControllerOffset extends _$ScrollControllerOffset {
  @override
  double build() {
    return 0;
  }

  void update(double value) {
    if (state != value) {
      state = value;
    }
  }
}
