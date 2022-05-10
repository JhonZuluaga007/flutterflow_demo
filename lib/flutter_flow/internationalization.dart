import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['es', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String esText = '',
    String enText = '',
  }) =>
      [esText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'tk66xwoq': {
      'es': 'Mi proyecto',
      'en': 'My project',
    },
    'ht2uhsi0': {
      'es': 'Ethiopian Natural',
      'en': 'Ethiopian Natural',
    },
    'ugsng7ba': {
      'es': 'Meters',
      'en': 'Meters',
    },
    '06fe8cb3': {
      'es': 'Process',
      'en': 'Process',
    },
    'kh69xvss': {
      'es': 'Region',
      'en': 'Region',
    },
    'cej7ki0a': {
      'es': '1,850',
      'en': '1,850',
    },
    '805or1tn': {
      'es': 'Washed',
      'en': 'Washed',
    },
    'jq0tu59m': {
      'es': 'Guji',
      'en': 'Guji',
    },
    '0md4rokj': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // Login
  {
    'bxhhwg93': {
      'es': 'email',
      'en': 'email',
    },
    'g8m6nriu': {
      'es': 'password',
      'en': 'password',
    },
    'e88hwli0': {
      'es': 'Login',
      'en': 'Login',
    },
    '4euf2hmm': {
      'es': 'Olvidaste tu contraseña ?',
      'en': 'Olvidaste tu contraseña ?',
    },
    'osaqoygp': {
      'es': 'Don\'t have an account?',
      'en': 'Don\'t have an account?',
    },
    'dclajkbp': {
      'es': 'Registro',
      'en': 'Registro',
    },
  },
  // Registry
  {
    'ahzz4do2': {
      'es': 'full name',
      'en': 'full name',
    },
    'dal9y0wd': {
      'es': 'full Name',
      'en': 'full Name',
    },
    'z8kw0knv': {
      'es': 'email',
      'en': 'email',
    },
    'yok1g5im': {
      'es': 'password',
      'en': 'password',
    },
    'al6fjrv2': {
      'es': 'confirm password',
      'en': 'confirm password',
    },
    'u8u29o4j': {
      'es': 'Register',
      'en': 'Register',
    },
    'z6rlr8cw': {
      'es': 'do you already have an account?',
      'en': 'do you already have an account?',
    },
    '9nfqfic4': {
      'es': 'Login',
      'en': 'Login',
    },
  },
  // ProjectDetails
  {
    'utx0msla': {
      'es': '123 Disney Way, Willingmington, WV 24921',
      'en': '123 Disney Way, Willingmington, WV 24921',
    },
    'qbcworya': {
      'es': '4/5 Reviews',
      'en': '4/5 Reviews',
    },
    'obbc6rf3': {
      'es': 'available tokens : ',
      'en': 'available tokens : ',
    },
    'cuvb58ws': {
      'es': 'DESCRIPTION',
      'en': 'DESCRIPTION',
    },
    'erftpqbj': {
      'es':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.',
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi.',
    },
    '31r6490d': {
      'es': '+ taxes',
      'en': '+ taxes',
    },
    'pdpvxxtg': {
      'es': 'per night',
      'en': 'per night',
    },
    'vx2kw8vj': {
      'es': 'Buy now',
      'en': 'Buy now',
    },
  },
  // Profile
  {
    '24k8qo1m': {
      'es': 'Edit Profile',
      'en': 'Edit Profile',
    },
    'bl7wt7kv': {
      'es': 'Change Password',
      'en': 'Change Password',
    },
    'dmro3645': {
      'es': 'Notification Settings',
      'en': 'Notification Settings',
    },
    'cqo5kk0n': {
      'es': 'Terms of Services',
      'en': 'Terms of Services',
    },
    '3fk9yc84': {
      'es': 'Log Out',
      'en': 'Log Out',
    },
  },
  // Project
  {
    'm2giqynk': {
      'es': 'Project',
      'en': 'Project',
    },
    'fihnnobs': {
      'es': 'Type to search here...',
      'en': 'Type to search here...',
    },
    'qziufx2c': {
      'es': 'Details',
      'en': 'Details',
    },
    '7b8l9c6f': {
      'es': 'Class Name',
      'en': 'Class Name',
    },
    '4sfxycun': {
      'es': '30m | High Intensity | Indoor/Outdoor',
      'en': '30m | High Intensity | Indoor/Outdoor',
    },
    'fr731cs6': {
      'es': 'Reserve',
      'en': 'Reserve',
    },
    'n9ddo3yj': {
      'es': '10:00am',
      'en': '10:00am',
    },
    'auqgeyrm': {
      'es': 'Thursday June 22',
      'en': 'Thursday June 22',
    },
    'eiatnz0y': {
      'es': 'Class Name',
      'en': 'Class Name',
    },
    '6bxkbn2p': {
      'es': '30m | High Intensity | Indoor/Outdoor',
      'en': '30m | High Intensity | Indoor/Outdoor',
    },
    'hqwd4icr': {
      'es': 'Reserve',
      'en': '30m | High Intensity | Indoor/Outdoor',
    },
    'xprk04ws': {
      'es': '10:00am',
      'en': '10:00am',
    },
    '0na5ln6w': {
      'es': 'Thursday June 22',
      'en': 'Thursday June 22',
    },
    '2pyfyzzn': {
      'es': 'Class Name',
      'en': 'Class Name',
    },
    'k84cwvql': {
      'es': '30m | High Intensity | Indoor/Outdoor',
      'en': '30m | High Intensity | Indoor/Outdoor',
    },
    'niuqvh59': {
      'es': 'Reserve',
      'en': 'Reserve',
    },
    'gd4ki0mz': {
      'es': '10:00am',
      'en': '10:00am',
    },
    'flho5lya': {
      'es': 'Thursday June 22',
      'en': 'Thursday June 22',
    },
  },
  // Congrats
  {
    'w048f900': {
      'es': 'Congrats!',
      'en': 'Congrats!',
    },
    'f7qai3na': {
      'es': 'Thanks for your purchase.',
      'en': 'Thanks for your purchase.',
    },
    'ptyrqfjw': {
      'es': 'Go Home',
      'en': 'Go Home',
    },
    'fz676x9b': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // movementsPage
  {
    'a6n096zr': {
      'es': 'My Movements',
      'en': 'My Movements',
    },
    'b3kr4xp3': {
      'es': 'Movemensts',
      'en': 'Movemensts',
    },
  },
  // testPage
  {
    'uae2fvfd': {
      'es': 'Hello World',
      'en': 'Hello World',
    },
    'tlzd8yte': {
      'es':
          'Hello World jjdhajdkhksjjjadkcjdshfkdsjfksdjfksdjfksdkjfskfjskdfjsdkfsklfjsdfjsldjskdfjslkfdjdwlkcnnkwdcnejkceineinienieniew',
      'en':
          'Hello World jjdhajdkhksjjjadkcjdshfkdsjfksdjfksdjfksdkjfskfjskdfjsdkfsklfjsdfjsldjskdfjslkfdjdwlkcnnkwdcnejkceineinienieniew',
    },
    'wyp60eo3': {
      'es': 'Home',
      'en': 'Home',
    },
  },
  // Miscellaneous
  {
    'f53s247r': {
      'es': '',
      'en': '',
    },
    'adbn0psu': {
      'es': '',
      'en': '',
    },
    'n9r4s4ai': {
      'es': '',
      'en': '',
    },
    'wxapm6ti': {
      'es': '',
      'en': '',
    },
    'aaxkbmej': {
      'es': '',
      'en': '',
    },
    '9uvotnbg': {
      'es': '',
      'en': '',
    },
    'qisdqfjg': {
      'es': '',
      'en': '',
    },
    'bncad36h': {
      'es': '',
      'en': '',
    },
    'jnaq1qxx': {
      'es': '',
      'en': '',
    },
    '9j0c14gb': {
      'es': '',
      'en': '',
    },
    'qprwu6qn': {
      'es': '',
      'en': '',
    },
    'fd4f9ogo': {
      'es': '',
      'en': '',
    },
    '59bmcnf4': {
      'es': '',
      'en': '',
    },
    'emg4u5gu': {
      'es': '',
      'en': '',
    },
    'tgwln01v': {
      'es': '',
      'en': '',
    },
    'wtetacyy': {
      'es': '',
      'en': '',
    },
    '0j1h9ohx': {
      'es': '',
      'en': '',
    },
    '5clgpu6a': {
      'es': '',
      'en': '',
    },
    '7lc4nt8z': {
      'es': '',
      'en': '',
    },
    'qw23i10c': {
      'es': '',
      'en': '',
    },
    '0lneg5nd': {
      'es': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
