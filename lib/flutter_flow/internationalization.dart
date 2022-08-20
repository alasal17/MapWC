import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'nb'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? nbText = '',
  }) =>
      [enText, nbText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Register
  {
    't9axep2d': {
      'en': 'Sign In',
      'nb': '',
    },
    'y3loxqwz': {
      'en': 'Sign Up',
      'nb': '',
    },
    'f7tv9qup': {
      'en': 'Get started by creating an account below.',
      'nb': '',
    },
    '257a6rng': {
      'en': 'Button',
      'nb': '',
    },
    'a9t1c7vj': {
      'en': 'E-mail',
      'nb': '',
    },
    'fbe39hfx': {
      'en': 'Enter password',
      'nb': '',
    },
    'ibid3xzc': {
      'en': 'Confirm password',
      'nb': '',
    },
    'e1p49dwg': {
      'en': 'Get Started',
      'nb': '',
    },
  },
  // Login
  {
    'qs9tfxec': {
      'en': 'Email addres',
      'nb': '',
    },
    't2p1hqc5': {
      'en': 'Password',
      'nb': '',
    },
    'xtewv76f': {
      'en': 'Use a Social Platform to Login',
      'nb': '',
    },
    'p3eaf550': {
      'en': 'Don\'t have an account?',
      'nb': '',
    },
    'rko7lpri': {
      'en': 'Register',
      'nb': '',
    },
  },
  // Home
  {
    'k7ek2jtn': {
      'en': 'Home',
      'nb': '',
    },
  },
  // Facilities_Info_Page
  {
    'b3zj719v': {
      'en': 'Anbefalt',
      'nb': '',
    },
    'l0ifwiby': {
      'en': 'Åpent: ',
      'nb': '',
    },
    'z4qbin5a': {
      'en': '5',
      'nb': '',
    },
    '6k1jkh6p': {
      'en': '3.5',
      'nb': '',
    },
    '96vog38u': {
      'en': '4,302',
      'nb': '',
    },
    'ufpanaao': {
      'en': '5',
      'nb': '',
    },
    'xg16pnq6': {
      'en': '4,302',
      'nb': '',
    },
    'jcxcw1kw': {
      'en': 'Ambefalinger',
      'nb': '',
    },
    '4dlhr470': {
      'en': 'Tilgjengelighet',
      'nb': '',
    },
    'x344oxt6': {
      'en': 'Service',
      'nb': '',
    },
    'u597tojd': {
      'en': 'Hyggene',
      'nb': '',
    },
    've42niub': {
      'en': 'Tilbuder',
      'nb': '',
    },
    '234px4sm': {
      'en': 'Knalltilbud',
      'nb': '',
    },
    'j5u2fzc3': {
      'en': '4 Min',
      'nb': '',
    },
    'bnnx7dji': {
      'en': '',
      'nb': '',
    },
    'nfx63vl0': {
      'en': 'BestDeal',
      'nb': '',
    },
    'gi2q3u68': {
      'en': '4 Min',
      'nb': '',
    },
    'rlrhe5q9': {
      'en': 'George Switzer',
      'nb': '',
    },
    'ku5m5sli': {
      'en': 'Relaxation',
      'nb': '',
    },
    '5y9y3mha': {
      'en': '4 Min',
      'nb': '',
    },
    'v1m97cfz': {
      'en': 'George Switzer',
      'nb': '',
    },
    '4236u662': {
      'en': 'Home',
      'nb': '',
    },
  },
  // User_Profil_Page
  {
    'k3e8ttgo': {
      'en': 'Profil',
      'nb': '',
    },
  },
  // popupMapInfo
  {
    'wd1fdd3m': {
      'en': '4 Folders',
      'nb': '',
    },
    's4mpm30a': {
      'en': '3 upcoming due dates',
      'nb': '',
    },
    'aq8c8v0y': {
      'en': '4 Folders',
      'nb': '',
    },
    '1y8jkjuk': {
      'en': '3 upcoming due dates',
      'nb': '',
    },
  },
  // Miscellaneous
  {
    'hyhdkb9j': {
      'en': '',
      'nb': '',
    },
    'v40f3kof': {
      'en': '',
      'nb': '',
    },
    'k1b9okot': {
      'en': '',
      'nb': '',
    },
    'jngt2tw8': {
      'en': '',
      'nb': '',
    },
    'hn62fe0i': {
      'en': '',
      'nb': '',
    },
    'pyiy8yxf': {
      'en': '',
      'nb': '',
    },
    'rn8o8edx': {
      'en': '',
      'nb': '',
    },
    'm1yz7d0q': {
      'en': '',
      'nb': '',
    },
    '3c2vhhub': {
      'en': '',
      'nb': '',
    },
    'g7lka7ri': {
      'en': '',
      'nb': '',
    },
    '36d00vfe': {
      'en': '',
      'nb': '',
    },
    '2agfsajb': {
      'en': '',
      'nb': '',
    },
    '7famudtf': {
      'en': '',
      'nb': '',
    },
    'mpj6i0vq': {
      'en': '',
      'nb': '',
    },
    '2tmjbgfc': {
      'en': '',
      'nb': '',
    },
    'zol2ie6r': {
      'en': '',
      'nb': '',
    },
    'os6ny1pc': {
      'en': '',
      'nb': '',
    },
    'qad3mffi': {
      'en': '',
      'nb': '',
    },
    'ydxb73nc': {
      'en': '',
      'nb': '',
    },
    '7o3qfvcj': {
      'en': '',
      'nb': '',
    },
    'f6pu1xd0': {
      'en': '',
      'nb': '',
    },
  },
].reduce((a, b) => a..addAll(b));
