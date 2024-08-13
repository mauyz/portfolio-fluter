import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_menu.g.dart';

@Riverpod(keepAlive: true)
class SelectedMenu extends _$SelectedMenu {
  @override
  Menu build() {
    return ref.read(dataRepositoryProvider).getMenu().first;
  }

  void update(Menu value) {
    if (state.index != value.index) {
      state = value;
    }
  }
}
