// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Développeur Mobile`
  String get jobTitle {
    return Intl.message(
      'Développeur Mobile',
      name: 'jobTitle',
      desc: '',
      args: [],
    );
  }

  /// `Master professionnel`
  String get masterDegree {
    return Intl.message(
      'Master professionnel',
      name: 'masterDegree',
      desc: '',
      args: [],
    );
  }

  /// `Licence professionnelle`
  String get licenseDegree {
    return Intl.message(
      'Licence professionnelle',
      name: 'licenseDegree',
      desc: '',
      args: [],
    );
  }

  /// `Consultant développeur flutter`
  String get consultantDeveloperFlutter {
    return Intl.message(
      'Consultant développeur flutter',
      name: 'consultantDeveloperFlutter',
      desc: '',
      args: [],
    );
  }

  /// `Depuis Mai 2024`
  String get sinceMai2024 {
    return Intl.message(
      'Depuis Mai 2024',
      name: 'sinceMai2024',
      desc: '',
      args: [],
    );
  }

  /// `Freelance`
  String get freelance {
    return Intl.message(
      'Freelance',
      name: 'freelance',
      desc: '',
      args: [],
    );
  }

  /// `Développeur flutter`
  String get flutterDeveloper {
    return Intl.message(
      'Développeur flutter',
      name: 'flutterDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `Développeur d'application Android`
  String get androidDeveloper {
    return Intl.message(
      'Développeur d\'application Android',
      name: 'androidDeveloper',
      desc: '',
      args: [],
    );
  }

  /// `Administrateur systèmes et réseaux`
  String get systemAdministrator {
    return Intl.message(
      'Administrateur systèmes et réseaux',
      name: 'systemAdministrator',
      desc: '',
      args: [],
    );
  }

  /// `Stage`
  String get internship {
    return Intl.message(
      'Stage',
      name: 'internship',
      desc: '',
      args: [],
    );
  }

  /// `A propos`
  String get aboutTitle {
    return Intl.message(
      'A propos',
      name: 'aboutTitle',
      desc: '',
      args: [],
    );
  }

  /// `Technologies`
  String get techTitle {
    return Intl.message(
      'Technologies',
      name: 'techTitle',
      desc: '',
      args: [],
    );
  }

  /// `Expériences`
  String get experienceTitle {
    return Intl.message(
      'Expériences',
      name: 'experienceTitle',
      desc: '',
      args: [],
    );
  }

  /// `Contact`
  String get contactTitle {
    return Intl.message(
      'Contact',
      name: 'contactTitle',
      desc: '',
      args: [],
    );
  }

  /// `Mode dark`
  String get modeDark {
    return Intl.message(
      'Mode dark',
      name: 'modeDark',
      desc: '',
      args: [],
    );
  }

  /// `Qui suis-je ?`
  String get whoIam {
    return Intl.message(
      'Qui suis-je ?',
      name: 'whoIam',
      desc: '',
      args: [],
    );
  }

  /// `Je suis passionné par la programmation et les nouvelles technologies.\nJ'ai une expérience significative dans la création d'applications mobiles utilisant des langages tels que Dart, Java et Kotlin.\nJ'ai travaillé avec plusieurs frameworks, notamment Flutter, Android SDK et JetPack Compose pour la conception d'interfaces utilisateur mobiles, ainsi que Spring Boot pour les applications backend.\n\nCollaborons et construisons une belle chose !`
  String get bioContentent {
    return Intl.message(
      'Je suis passionné par la programmation et les nouvelles technologies.\nJ\'ai une expérience significative dans la création d\'applications mobiles utilisant des langages tels que Dart, Java et Kotlin.\nJ\'ai travaillé avec plusieurs frameworks, notamment Flutter, Android SDK et JetPack Compose pour la conception d\'interfaces utilisateur mobiles, ainsi que Spring Boot pour les applications backend.\n\nCollaborons et construisons une belle chose !',
      name: 'bioContentent',
      desc: '',
      args: [],
    );
  }

  /// `Je m'appelle {name}, ingénieur développeur et passionné de technologie`
  String introContent(Object name) {
    return Intl.message(
      'Je m\'appelle $name, ingénieur développeur et passionné de technologie',
      name: 'introContent',
      desc: '',
      args: [name],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
