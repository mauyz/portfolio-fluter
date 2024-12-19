import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/domain/entities/menu.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'selected_menu.g.dart';

@Riverpod(keepAlive: true)
class SelectedMenu extends _$SelectedMenu {
  @override
  Menu build(BuildContext context) {
    return ref.read(dataRepositoryProvider).getMenu(context).elementAt(0);
  }

  void update(Menu value) {
    if (state.index != value.index) {
      state = value;
    }
  }
}
