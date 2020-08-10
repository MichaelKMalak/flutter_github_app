import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:mobile_code_challenge_solution/core/services/i18n/wrappers/messages_all.dart';

class AppLocalizations {
  AppLocalizations(this.localeName);

  static Future<AppLocalizations> load(Locale locale) {
    var name = locale.toString();
    if (locale != null &&
        locale.countryCode != null &&
        locale.countryCode.isNotEmpty) {
      name = locale.languageCode;
    }
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      return AppLocalizations(localeName);
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  final String localeName;

  String get title {
    return Intl.message(
      'Github Repositories',
      name: 'title',
      desc: 'Title for the application',
      locale: localeName,
    );
  }

  String get repoListTitle {
    return Intl.message(
      'Trending Repos',
      name: 'repoListTitle',
      desc: 'Text for the title of the Repository List screen',
      locale: localeName,
    );
  }

  String get sortBy {
    return Intl.message(
      'Sort by',
      name: 'sortBy',
      desc: 'Text before sorting parameter in menu dropdown list',
      locale: localeName,
    );
  }

  String get stars {
    return Intl.message(
      'stars',
      name: 'stars',
      desc: 'one possible sorting parameter',
      locale: localeName,
    );
  }

  String get forks {
    return Intl.message(
      'forks',
      name: 'forks',
      desc: 'one possible sorting parameter',
      locale: localeName,
    );
  }

  String get settings {
    return Intl.message(
      'settings',
      name: 'settings',
      desc: 'Text for the title of the Settings screen',
      locale: localeName,
    );
  }

  String get toggleTheme {
    return Intl.message(
      'Toggle theme',
      name: 'toggleTheme',
      desc: 'Text to toggle theme between different options',
      locale: localeName,
    );
  }

  String get daysAgo {
    return Intl.message(
      'Days ago',
      name: 'daysAgo',
      desc: 'Text title of filter option',
      locale: localeName,
    );
  }

  String get filterRepos {
    return Intl.message(
      'Filter Repositories',
      name: 'filterRepos',
      desc: 'Text displayed on filter button',
      locale: localeName,
    );
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();
  @override
  bool isSupported(Locale locale) => ['en'].contains(locale.languageCode);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
