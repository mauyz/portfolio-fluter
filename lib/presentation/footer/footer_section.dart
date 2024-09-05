import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/utils.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/domain/entities/contact.dart';
import 'package:portfolio/generated/l10n.dart';
import 'package:portfolio/presentation/common_widgets/animator.dart';
import 'package:portfolio/presentation/common_widgets/on_hover_container.dart';
import 'package:portfolio/presentation/footer/copyright_widget.dart';

class FooterSection extends ConsumerWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final infos = ref.read(dataRepositoryProvider).getInfos();
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50.0),
          topRight: Radius.circular(50.0),
        )
      ),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Text(
                S.of(context).footerIntro.toUpperCase(),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Text(
                S.of(context).contactMe,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: [
                  WidgetAnimator(
                    child: OnHoverContainer(
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 10.0,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 48,
                                color: Theme.of(context).colorScheme.error,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Antananarivo, Madagascar",
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ...infos.contacts.where(
                    (element) {
                      return element.type == ContactType.phone ||
                          element.type == ContactType.mail;
                    },
                  ).map(
                    (contact) {
                      return Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: contact.values.map(
                          (e) {
                            return Flexible(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 0.0),
                                child: WidgetAnimator(
                                  child: OnHoverContainer(
                                    child: Card(
                                      child: InkWell(
                                        borderRadius: const BorderRadius.all(
                                          Radius.circular(12.0),
                                        ),
                                        onTap: () {
                                          openContact(context, contact);
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 20.0,
                                            horizontal: 10.0,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(
                                                contact.icon,
                                                size: 48,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .error,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: SelectableText(
                                                  e,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .titleSmall,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      "Made with Flutter and Love 💜",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ),
                  const Flexible(
                    child: CopyrightWidget(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
