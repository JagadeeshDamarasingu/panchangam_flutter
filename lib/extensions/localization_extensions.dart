import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension LocalizationExtensions on BuildContext {
  AppLocalizations? get localizations => AppLocalizations.of(this);

  CupertinoLocalizations get cLocalizations => CupertinoLocalizations.of(this);

  MaterialLocalizations get mLocalizations => MaterialLocalizations.of(this);
}
