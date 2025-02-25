import 'package:flutter/material.dart';
import 'package:portfolio/domain/strategy/contact_strategy.dart';
import 'package:portfolio/generated/l10n.dart' show S;
import 'package:portfolio/presentation/popup/popup_error.dart' show popupError;
import 'package:url_launcher/url_launcher.dart' show launchUrl;

class SkypeStrategy implements ContactStrategy {
  OverlayEntry? _overlayEntry;

  @override
  void open(BuildContext context, String url) {
    final overlay = Overlay.of(context);
    final button = context.findRenderObject() as RenderBox;
    final position = button.localToGlobal(Offset.zero);
    _overlayEntry = OverlayEntry(
      builder: (_) => GestureDetector(
        onTap: () {
          _hideMenu();
        },
        behavior: HitTestBehavior.opaque,
        child: Stack(
          children: [
            Positioned(
              left: position.dx - (button.size.width * 2.5),
              top: position.dy - (button.size.height * 2.5),
              width: 150,
              child: Material(
                elevation: 4,
                shadowColor: Theme.of(context).colorScheme.error,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(
                        Icons.call,
                        size: 24.0,
                        color: Theme.of(context).colorScheme.error,
                      ),
                      title: Text(
                        S.current.callText,
                      ),
                      onTap: () async {
                        final uri = Uri.parse('skype:$url?call');
                        try {
                          await launchUrl(uri);
                        } catch (_) {
                          if (context.mounted) {
                            popupError(
                              context,
                              S.current.cantOpenContactError("Skype"),
                            );
                          }
                        }
                        _hideMenu();
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.chat,
                        size: 24.0,
                        color: Theme.of(context).colorScheme.error,
                      ),
                      title: Text(
                        S.current.chatText,
                      ),
                      onTap: () async {
                        final uri = Uri.parse('skype:$url?chat');
                        try {
                          await launchUrl(uri);
                        } catch (_) {
                          if (context.mounted) {
                            popupError(
                              context,
                              S.current.cantOpenContactError("Skype"),
                            );
                          }
                        }
                        _hideMenu();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    overlay.insert(_overlayEntry!);
  }

  void _hideMenu() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }
}
