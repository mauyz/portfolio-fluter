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

  /// `Développeur mobile medior`
  String get devMobileTitle {
    return Intl.message(
      'Développeur mobile medior',
      name: 'devMobileTitle',
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

  /// `Développeur autodidacte et diplômé de l'École Nationale d'Informatique de Fianarantsoa, avec une solide expérience dans la conception, le développement et la mise en production d'applications mobiles.\n\nAu cours des trois dernières années, j'ai acquis une expertise significative dans les langages Dart, Java, et Kotlin, ainsi que dans les frameworks Flutter et Android SDK.\n\nPassionné par la programmation, j'aime explorer et apprendre de nouvelles technologies. \nActuellement, je me forme de manière autonome sur le framework JetPack Compose et Spring Boot pour enrichir mes compétences et rester à la pointe des évolutions technologiques.\n\nCollaborons et construisons des belles choses !`
  String get bioContent {
    return Intl.message(
      'Développeur autodidacte et diplômé de l\'École Nationale d\'Informatique de Fianarantsoa, avec une solide expérience dans la conception, le développement et la mise en production d\'applications mobiles.\n\nAu cours des trois dernières années, j\'ai acquis une expertise significative dans les langages Dart, Java, et Kotlin, ainsi que dans les frameworks Flutter et Android SDK.\n\nPassionné par la programmation, j\'aime explorer et apprendre de nouvelles technologies. \nActuellement, je me forme de manière autonome sur le framework JetPack Compose et Spring Boot pour enrichir mes compétences et rester à la pointe des évolutions technologiques.\n\nCollaborons et construisons des belles choses !',
      name: 'bioContent',
      desc: '',
      args: [],
    );
  }

  /// `Je m'appelle`
  String get introContent {
    return Intl.message(
      'Je m\'appelle',
      name: 'introContent',
      desc: '',
      args: [],
    );
  }

  /// `Ingénieur développeur`
  String get softwareIng {
    return Intl.message(
      'Ingénieur développeur',
      name: 'softwareIng',
      desc: '',
      args: [],
    );
  }

  /// `Passionné des technologies`
  String get passionnateTech {
    return Intl.message(
      'Passionné des technologies',
      name: 'passionnateTech',
      desc: '',
      args: [],
    );
  }

  /// `Accueil`
  String get home {
    return Intl.message(
      'Accueil',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Bienvenu dans mon portfolio`
  String get welcomeTitle {
    return Intl.message(
      'Bienvenu dans mon portfolio',
      name: 'welcomeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Je suis`
  String get iam {
    return Intl.message(
      'Je suis',
      name: 'iam',
      desc: '',
      args: [],
    );
  }

  /// `Parcours`
  String get parcourTitle {
    return Intl.message(
      'Parcours',
      name: 'parcourTitle',
      desc: '',
      args: [],
    );
  }

  /// `Compétences`
  String get skillTitle {
    return Intl.message(
      'Compétences',
      name: 'skillTitle',
      desc: '',
      args: [],
    );
  }

  /// `Projets`
  String get projectTitle {
    return Intl.message(
      'Projets',
      name: 'projectTitle',
      desc: '',
      args: [],
    );
  }

  /// `Fermer`
  String get closeTitle {
    return Intl.message(
      'Fermer',
      name: 'closeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Impossible d'ouvrir {contactType}`
  String cantOpenContactError(Object contactType) {
    return Intl.message(
      'Impossible d\'ouvrir $contactType',
      name: 'cantOpenContactError',
      desc: '',
      args: [contactType],
    );
  }

  /// `l'adresse mail`
  String get Mailaddress {
    return Intl.message(
      'l\'adresse mail',
      name: 'Mailaddress',
      desc: '',
      args: [],
    );
  }

  /// `le lien`
  String get linkTitle {
    return Intl.message(
      'le lien',
      name: 'linkTitle',
      desc: '',
      args: [],
    );
  }

  /// `Académique`
  String get academicTitle {
    return Intl.message(
      'Académique',
      name: 'academicTitle',
      desc: '',
      args: [],
    );
  }

  /// `Formation approfondie en programmation web, mobile et desktop\nDéveloppement des compétences en programmation réseau\nAdministration avancée, sécurisation des systèmes et réseaux informatiques`
  String get masterDesc {
    return Intl.message(
      'Formation approfondie en programmation web, mobile et desktop\nDéveloppement des compétences en programmation réseau\nAdministration avancée, sécurisation des systèmes et réseaux informatiques',
      name: 'masterDesc',
      desc: '',
      args: [],
    );
  }

  /// `Formation sur les bases de l'algorithme et de la programmation\nFormation sur l'administration des systèmes et réseaux informatiques\nIntroduction à la base de données relationnelles`
  String get licenceDesc {
    return Intl.message(
      'Formation sur les bases de l\'algorithme et de la programmation\nFormation sur l\'administration des systèmes et réseaux informatiques\nIntroduction à la base de données relationnelles',
      name: 'licenceDesc',
      desc: '',
      args: [],
    );
  }

  /// `Professionnel`
  String get professionalTitle {
    return Intl.message(
      'Professionnel',
      name: 'professionalTitle',
      desc: '',
      args: [],
    );
  }

  /// `Maintenance applicative\nDéveloppement des nouvelles fonctionnalités\nIntégration des visuels en respectant les maquettes et l’expérience utilisateur\nMise en production Play Store`
  String get jlConsultingDesc {
    return Intl.message(
      'Maintenance applicative\nDéveloppement des nouvelles fonctionnalités\nIntégration des visuels en respectant les maquettes et l’expérience utilisateur\nMise en production Play Store',
      name: 'jlConsultingDesc',
      desc: '',
      args: [],
    );
  }

  /// `Concevoir avec l’équipe les nouvelles fonctionnalités de la plateforme\nImplémenter les modifications en respectant les exigences techniques\nSuivre les journaux des applications\nMaintenir une expérience utilisateur de haute qualité\nAméliorer les performances et corriger les bugs\nGérer le contenu et la publication des mises à jour sur Play Store et App Store`
  String get neoshoreDesc {
    return Intl.message(
      'Concevoir avec l’équipe les nouvelles fonctionnalités de la plateforme\nImplémenter les modifications en respectant les exigences techniques\nSuivre les journaux des applications\nMaintenir une expérience utilisateur de haute qualité\nAméliorer les performances et corriger les bugs\nGérer le contenu et la publication des mises à jour sur Play Store et App Store',
      name: 'neoshoreDesc',
      desc: '',
      args: [],
    );
  }

  /// `Conception et développement d’une application de gestion d’un clinique\nDéveloppement d’une application de rencontre pour la communauté comorienne et mahoraise`
  String get freelanceDesc {
    return Intl.message(
      'Conception et développement d’une application de gestion d’un clinique\nDéveloppement d’une application de rencontre pour la communauté comorienne et mahoraise',
      name: 'freelanceDesc',
      desc: '',
      args: [],
    );
  }

  /// `Administration et configuration des serveurs Linux et Windows\nAutomatisation des tâches récurrentes à l’aide de scripts Bash, Shell et PHP\nGestion d’un parc informatique contenant 120 postes de travail`
  String get onnOlepDesc {
    return Intl.message(
      'Administration et configuration des serveurs Linux et Windows\nAutomatisation des tâches récurrentes à l’aide de scripts Bash, Shell et PHP\nGestion d’un parc informatique contenant 120 postes de travail',
      name: 'onnOlepDesc',
      desc: '',
      args: [],
    );
  }

  /// `Développement d’une application pour la recherche des offres d’emploi`
  String get emayaDesc {
    return Intl.message(
      'Développement d’une application pour la recherche des offres d’emploi',
      name: 'emayaDesc',
      desc: '',
      args: [],
    );
  }

  /// `BAC Série C`
  String get bacDegree {
    return Intl.message(
      'BAC Série C',
      name: 'bacDegree',
      desc: '',
      args: [],
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
