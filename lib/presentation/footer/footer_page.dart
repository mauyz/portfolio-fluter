import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:portfolio/core/constants/info_constants.dart';
import 'package:portfolio/core/utils.dart';
import 'package:portfolio/data/repos/data_repository_impl.dart';
import 'package:portfolio/domain/entities/contact.dart';
import 'package:portfolio/presentation/footer/copyright_widget.dart';
import 'package:unicons/unicons.dart';

class FooterPage extends ConsumerWidget {
  const FooterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final infos = ref.read(dataRepositoryProvider).getInfos();
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            "Collaborons et construisons des belles choses !",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Wrap(
              spacing: 20.0,
              runSpacing: 20.0,
              children: [
                Card(
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
                                          color:
                                              Theme.of(context).colorScheme.error,
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
                          );
                        },
                      ).toList(),
                    );
                  },
                ),
                Card(
                  child: InkWell(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                    onTap: () {
                      openLink(context, github.values.first);
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
                            UniconsLine.github,
                            size: 48,
                            color: Theme.of(context).colorScheme.error,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 40,
                            ),
                            child: Text(
                              "GitHub",
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    "Designed and developed with 💜",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
                const Flexible(
                  child: CopyrightWidget(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
