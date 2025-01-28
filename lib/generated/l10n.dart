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

  /// `Développeur d'application mobile`
  String get devMobileTitle {
    return Intl.message(
      'Développeur d\'application mobile',
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

  /// `Développeur consultant`
  String get consultantDeveloperFlutter {
    return Intl.message(
      'Développeur consultant',
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

  /// `Mode sombre`
  String get modeDark {
    return Intl.message(
      'Mode sombre',
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

  /// `Développeur autodidacte et diplômé de l'Ecole Nationale d'Informatique de Fianarantsoa, Madagascar.\nJe possède une solide expérience dans la conception, le développement et la mise en production d'applications.\n\nAu cours des quatre dernières années, j'ai acquis une solide expertise en programmation avec les langages Dart, Java et Kotlin.\nJ'ai particulièrement travaillé sur le développement mobile en utilisant le framework Flutter ainsi que l'Android SDK.\n\nPassionné par la programmation, je consacre régulièrement du temps à la veille technologique et à l'exploration de nouvelles technologies.\n\nJe me forme actuellement de manière autonome aux frameworks React Native et Ionic pour approfondir mes compétences en développement mobile.\n\nEn parallèle, je me perfectionne sur Spring et Symfony afin de renforcer mes connaissances en backend et de rester à jour avec les avancées technologiques.`
  String get bioContent {
    return Intl.message(
      'Développeur autodidacte et diplômé de l\'Ecole Nationale d\'Informatique de Fianarantsoa, Madagascar.\nJe possède une solide expérience dans la conception, le développement et la mise en production d\'applications.\n\nAu cours des quatre dernières années, j\'ai acquis une solide expertise en programmation avec les langages Dart, Java et Kotlin.\nJ\'ai particulièrement travaillé sur le développement mobile en utilisant le framework Flutter ainsi que l\'Android SDK.\n\nPassionné par la programmation, je consacre régulièrement du temps à la veille technologique et à l\'exploration de nouvelles technologies.\n\nJe me forme actuellement de manière autonome aux frameworks React Native et Ionic pour approfondir mes compétences en développement mobile.\n\nEn parallèle, je me perfectionne sur Spring et Symfony afin de renforcer mes connaissances en backend et de rester à jour avec les avancées technologiques.',
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
  String get passionateTech {
    return Intl.message(
      'Passionné des technologies',
      name: 'passionateTech',
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

  /// `Maintenance applicative\nDéveloppement des nouvelles fonctionnalités\nIntégration des visuels en respectant les maquettes et l’expérience utilisateur\nDéveloppement API REST en Symfony`
  String get jlConsultingDesc {
    return Intl.message(
      'Maintenance applicative\nDéveloppement des nouvelles fonctionnalités\nIntégration des visuels en respectant les maquettes et l’expérience utilisateur\nDéveloppement API REST en Symfony',
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

  /// `Télécharger mon CV`
  String get downloadCV {
    return Intl.message(
      'Télécharger mon CV',
      name: 'downloadCV',
      desc: '',
      args: [],
    );
  }

  /// `Langages de programmations`
  String get language {
    return Intl.message(
      'Langages de programmations',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Framework`
  String get framework {
    return Intl.message(
      'Framework',
      name: 'framework',
      desc: '',
      args: [],
    );
  }

  /// `Base des données`
  String get database {
    return Intl.message(
      'Base des données',
      name: 'database',
      desc: '',
      args: [],
    );
  }

  /// `Outils et API`
  String get toolsApi {
    return Intl.message(
      'Outils et API',
      name: 'toolsApi',
      desc: '',
      args: [],
    );
  }

  /// `Application mobile permettant de collecter des informations sur les entreprises`
  String get quadientDesc {
    return Intl.message(
      'Application mobile permettant de collecter des informations sur les entreprises',
      name: 'quadientDesc',
      desc: '',
      args: [],
    );
  }

  /// `Application web et mobile qui permet d'explorer la constitution de Madagascar`
  String get constitutionDesc {
    return Intl.message(
      'Application web et mobile qui permet d\'explorer la constitution de Madagascar',
      name: 'constitutionDesc',
      desc: '',
      args: [],
    );
  }

  /// `Plateforme d'analyse des vidéos en basant sur les expressions faciales et une suite des questions`
  String get feelinDesc {
    return Intl.message(
      'Plateforme d\'analyse des vidéos en basant sur les expressions faciales et une suite des questions',
      name: 'feelinDesc',
      desc: '',
      args: [],
    );
  }

  /// `Voir sur :`
  String get viewMore {
    return Intl.message(
      'Voir sur :',
      name: 'viewMore',
      desc: '',
      args: [],
    );
  }

  /// `Ce site web où j'expose mes parcours, mes compétences ainsi que mes projets personnels et professionnels`
  String get portfolioDesc {
    return Intl.message(
      'Ce site web où j\'expose mes parcours, mes compétences ainsi que mes projets personnels et professionnels',
      name: 'portfolioDesc',
      desc: '',
      args: [],
    );
  }

  /// `Mode clair`
  String get lightMode {
    return Intl.message(
      'Mode clair',
      name: 'lightMode',
      desc: '',
      args: [],
    );
  }

  /// `Mon parcours professionnel en informatique est marqué par plusieurs expériences enrichissantes, tant au travers d'emplois que de stages.\nCelles-ci m'ont permis de développer des compétences solides dans ce domaine en constante évolution.\n\nVoici quelques-unes des expériences professionnelles que j'ai acquises au cours de ces dernières années :`
  String get careerProIntro {
    return Intl.message(
      'Mon parcours professionnel en informatique est marqué par plusieurs expériences enrichissantes, tant au travers d\'emplois que de stages.\nCelles-ci m\'ont permis de développer des compétences solides dans ce domaine en constante évolution.\n\nVoici quelques-unes des expériences professionnelles que j\'ai acquises au cours de ces dernières années :',
      name: 'careerProIntro',
      desc: '',
      args: [],
    );
  }

  /// `Mon parcours académique en informatique a été marqué par des formations rigoureuses, notamment à l'Ecole Nationale d'Informatique (ENI) de Fianarantsoa.\nAvant cela, j'ai obtenu un baccalauréat scientifique, qui a posé les bases de mon intérêt pour les sciences et les technologies.`
  String get careerScholIntro {
    return Intl.message(
      'Mon parcours académique en informatique a été marqué par des formations rigoureuses, notamment à l\'Ecole Nationale d\'Informatique (ENI) de Fianarantsoa.\nAvant cela, j\'ai obtenu un baccalauréat scientifique, qui a posé les bases de mon intérêt pour les sciences et les technologies.',
      name: 'careerScholIntro',
      desc: '',
      args: [],
    );
  }

  /// `Construisons des belles choses !`
  String get footerIntro {
    return Intl.message(
      'Construisons des belles choses !',
      name: 'footerIntro',
      desc: '',
      args: [],
    );
  }

  /// `Si vous voulez qu'on travaille ensemble, n'hésitez pas à me contacter.`
  String get contactMe {
    return Intl.message(
      'Si vous voulez qu\'on travaille ensemble, n\'hésitez pas à me contacter.',
      name: 'contactMe',
      desc: '',
      args: [],
    );
  }

  /// `Je suis heureux de vous présenter une sélection de mes projets de développement récents.\nChacun de ces projets a été réalisé avec diverses technologies et compétences, visant à résoudre une variété de problématiques.`
  String get projectIntro {
    return Intl.message(
      'Je suis heureux de vous présenter une sélection de mes projets de développement récents.\nChacun de ces projets a été réalisé avec diverses technologies et compétences, visant à résoudre une variété de problématiques.',
      name: 'projectIntro',
      desc: '',
      args: [],
    );
  }

  /// `Tout au long de mon parcours, j'ai acquis et affiné un ensemble de compétences en développement informatique, couvrant divers langages, frameworks, et outils.\n\nCes compétences me permettent de concevoir et de mettre en œuvre des solutions techniques adaptées aux besoins spécifiques de chaque projet.`
  String get skillIntro {
    return Intl.message(
      'Tout au long de mon parcours, j\'ai acquis et affiné un ensemble de compétences en développement informatique, couvrant divers langages, frameworks, et outils.\n\nCes compétences me permettent de concevoir et de mettre en œuvre des solutions techniques adaptées aux besoins spécifiques de chaque projet.',
      name: 'skillIntro',
      desc: '',
      args: [],
    );
  }

  /// `Je vous invite aussi à explorer mon `
  String get gitHubIntro {
    return Intl.message(
      'Je vous invite aussi à explorer mon ',
      name: 'gitHubIntro',
      desc: '',
      args: [],
    );
  }

  /// `, où je partage des projets et des codes open-sources.`
  String get gitHubEndIntro {
    return Intl.message(
      ', où je partage des projets et des codes open-sources.',
      name: 'gitHubEndIntro',
      desc: '',
      args: [],
    );
  }

  /// `Explorez quelques-uns des projets sur lesquels j'ai travaillé.`
  String get projectListIntro {
    return Intl.message(
      'Explorez quelques-uns des projets sur lesquels j\'ai travaillé.',
      name: 'projectListIntro',
      desc: '',
      args: [],
    );
  }

  /// `Gestion des tâches`
  String get taskManager {
    return Intl.message(
      'Gestion des tâches',
      name: 'taskManager',
      desc: '',
      args: [],
    );
  }

  /// `Une simple application de gestion des tâches utile pour apprendre les meilleures pratiques de Flutter`
  String get taskManagerDesc {
    return Intl.message(
      'Une simple application de gestion des tâches utile pour apprendre les meilleures pratiques de Flutter',
      name: 'taskManagerDesc',
      desc: '',
      args: [],
    );
  }

  /// `Une application sert à explorer le code du travail Malagasy`
  String get workcodeDesc {
    return Intl.message(
      'Une application sert à explorer le code du travail Malagasy',
      name: 'workcodeDesc',
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
      Locale.fromSubtags(languageCode: 'en'),
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
