
import 'dart:async';

// ignore: unused_import
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_de.dart';
import 'app_localizations_en.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations returned
/// by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// localizationDelegates list, and the locales they support in the app's
/// supportedLocales list. For example:
///
/// ```
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: ^0.17.0-nullsafety.2
///
///   # rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  // ignore: unused_field
  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('de'),
    Locale('en')
  ];

  /// No description provided for @button_back.
  ///
  /// In de, this message translates to:
  /// **'Zurück'**
  String get button_back;

  /// No description provided for @button_continue.
  ///
  /// In de, this message translates to:
  /// **'Weiter'**
  String get button_continue;

  /// No description provided for @button_home.
  ///
  /// In de, this message translates to:
  /// **'Home'**
  String get button_home;

  /// No description provided for @button_exit.
  ///
  /// In de, this message translates to:
  /// **'Beenden'**
  String get button_exit;

  /// No description provided for @home_card_one_title.
  ///
  /// In de, this message translates to:
  /// **'Was ist Hautkrebs?'**
  String get home_card_one_title;

  /// No description provided for @home_card_one_content.
  ///
  /// In de, this message translates to:
  /// **'Das Wichtigste über Hautkrebs kurz zusammengefasst'**
  String get home_card_one_content;

  /// No description provided for @home_card_one_buttonText.
  ///
  /// In de, this message translates to:
  /// **'Mehr über Hautkrebs'**
  String get home_card_one_buttonText;

  /// No description provided for @home_card_one_actionText.
  ///
  /// In de, this message translates to:
  /// **'Nein, danke'**
  String get home_card_one_actionText;

  /// No description provided for @home_card_two_title.
  ///
  /// In de, this message translates to:
  /// **'Was ist mein Risiko?'**
  String get home_card_two_title;

  /// No description provided for @home_card_two_content.
  ///
  /// In de, this message translates to:
  /// **'Erstellen sie ihren Avatar und finden sie ihr Hautkrebsrisiko heraus'**
  String get home_card_two_content;

  /// No description provided for @home_card_two_buttonText.
  ///
  /// In de, this message translates to:
  /// **'Mehr über mein Risiko'**
  String get home_card_two_buttonText;

  /// No description provided for @home_card_two_actionText.
  ///
  /// In de, this message translates to:
  /// **'Nein, danke'**
  String get home_card_two_actionText;

  /// No description provided for @home_card_three_title.
  ///
  /// In de, this message translates to:
  /// **'Wie schütze ich mich?'**
  String get home_card_three_title;

  /// No description provided for @home_card_three_content.
  ///
  /// In de, this message translates to:
  /// **'Was ist Hautkrebsvorsorge und wie kann ich mich schützen?'**
  String get home_card_three_content;

  /// No description provided for @home_card_three_buttonText.
  ///
  /// In de, this message translates to:
  /// **'Mehr über die Vorsorge'**
  String get home_card_three_buttonText;

  /// No description provided for @home_card_three_actionText.
  ///
  /// In de, this message translates to:
  /// **'Nein, danke'**
  String get home_card_three_actionText;

  /// No description provided for @endScreen_text.
  ///
  /// In de, this message translates to:
  /// **'Wollen sie mehr über Hautkrebs-Screening wissen?\nSprechen Sie mit ihrem Arzt oder Praxispersonal'**
  String get endScreen_text;

  /// No description provided for @endScreen_button_again.
  ///
  /// In de, this message translates to:
  /// **'Nochmal Spielen'**
  String get endScreen_button_again;

  /// No description provided for @informationOne_title.
  ///
  /// In de, this message translates to:
  /// **'Was ist Hautkrebs?'**
  String get informationOne_title;

  /// No description provided for @informationOne_text_one_title.
  ///
  /// In de, this message translates to:
  /// **'Was ist Hautkrebs'**
  String get informationOne_text_one_title;

  /// No description provided for @informationOne_text_one_content.
  ///
  /// In de, this message translates to:
  /// **'Es gibt verschiedene Krebskrankheiten, die unter Hautkrebs zusammengefasst werden.'**
  String get informationOne_text_one_content;

  /// No description provided for @informationOne_buttonText.
  ///
  /// In de, this message translates to:
  /// **'Okay'**
  String get informationOne_buttonText;

  /// No description provided for @informationTwo_title.
  ///
  /// In de, this message translates to:
  /// **'Was ist Hautkrebs?'**
  String get informationTwo_title;

  /// No description provided for @informationTwo_text_one_title.
  ///
  /// In de, this message translates to:
  /// **'Weißer Hautkrebs'**
  String get informationTwo_text_one_title;

  /// No description provided for @informationTwo_text_one_partOne.
  ///
  /// In de, this message translates to:
  /// **'Heller, oder auch weißer Hautkrebs ist '**
  String get informationTwo_text_one_partOne;

  /// No description provided for @informationTwo_text_one_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'die weitverbreitetste  Form von Hautkrebs. '**
  String get informationTwo_text_one_highlightOne;

  /// No description provided for @informationTwo_text_one_partTwo.
  ///
  /// In de, this message translates to:
  /// **'Typischerweise entsteht er ab einem Alter von 35 Jahren. Die Häufigkeit nimmt mit dem Alter zu. In Deutschland erkranken pro Jahr knapp 230.000 an dem weißen Hautkrebs, rund 930 Personen sterben an ihm.'**
  String get informationTwo_text_one_partTwo;

  /// No description provided for @informationTwo_text_one_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **''**
  String get informationTwo_text_one_highlightTwo;

  /// No description provided for @informationTwo_text_one_partThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get informationTwo_text_one_partThree;

  /// No description provided for @informationTwo_buttonText.
  ///
  /// In de, this message translates to:
  /// **'Okay'**
  String get informationTwo_buttonText;

  /// No description provided for @informationThree_title.
  ///
  /// In de, this message translates to:
  /// **'Was ist Hautkrebs?'**
  String get informationThree_title;

  /// No description provided for @informationThree_text_one_title.
  ///
  /// In de, this message translates to:
  /// **'Schwarzer Hautkrebs'**
  String get informationThree_text_one_title;

  /// No description provided for @informationThree_text_one_partOne.
  ///
  /// In de, this message translates to:
  /// **'Der schwarze Hautkrebs ist die '**
  String get informationThree_text_one_partOne;

  /// No description provided for @informationThree_text_one_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'bösartigste Variante des Hautkrebses. '**
  String get informationThree_text_one_highlightOne;

  /// No description provided for @informationThree_text_one_partTwo.
  ///
  /// In de, this message translates to:
  /// **'Mehr als die Hälfte der betroffenen Personen sind männlich. Personen jeden Alters können an ihm erkranken, die Wahrscheinlichkeit nimmt im Alter zu. In Deutschland erkranken jährlich rund 23.500 Personen an schwarzen Hautkrebs, rund 2.930 Personen sterben an ihm.'**
  String get informationThree_text_one_partTwo;

  /// No description provided for @informationThree_text_one_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **''**
  String get informationThree_text_one_highlightTwo;

  /// No description provided for @informationThree_text_one_partThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get informationThree_text_one_partThree;

  /// No description provided for @informationThree_button_one_text.
  ///
  /// In de, this message translates to:
  /// **'Mehr Infos'**
  String get informationThree_button_one_text;

  /// No description provided for @informationThree_button_two_text.
  ///
  /// In de, this message translates to:
  /// **'Alles klar'**
  String get informationThree_button_two_text;

  /// No description provided for @protection_title.
  ///
  /// In de, this message translates to:
  /// **'Wie schütze ich mich gegen Hautkrebs?'**
  String get protection_title;

  /// No description provided for @protection_card_one_title.
  ///
  /// In de, this message translates to:
  /// **'Vorsorge beim Arzt'**
  String get protection_card_one_title;

  /// No description provided for @protection_card_one_content.
  ///
  /// In de, this message translates to:
  /// **'Wie läuft ein Hautkrebs-Screening ab?'**
  String get protection_card_one_content;

  /// No description provided for @protection_card_one_button.
  ///
  /// In de, this message translates to:
  /// **'Früherkennung'**
  String get protection_card_one_button;

  /// No description provided for @protection_card_one_actionText.
  ///
  /// In de, this message translates to:
  /// **'Nein, nichts über Früherkennung'**
  String get protection_card_one_actionText;

  /// No description provided for @protection_card_two_title.
  ///
  /// In de, this message translates to:
  /// **'Sich selbst schützen'**
  String get protection_card_two_title;

  /// No description provided for @protection_card_two_content.
  ///
  /// In de, this message translates to:
  /// **'Was kann ich tun um mich zu schützen?'**
  String get protection_card_two_content;

  /// No description provided for @protection_card_two_button.
  ///
  /// In de, this message translates to:
  /// **'Vorbeugung'**
  String get protection_card_two_button;

  /// No description provided for @protection_card_two_actionText.
  ///
  /// In de, this message translates to:
  /// **'Nein, nichts über Vorbeugung'**
  String get protection_card_two_actionText;

  /// No description provided for @preventionOne_title.
  ///
  /// In de, this message translates to:
  /// **'Vorbeugung'**
  String get preventionOne_title;

  /// No description provided for @preventionOne_text_one_title.
  ///
  /// In de, this message translates to:
  /// **'UV-Strahlung als Grund für Hautkrebs'**
  String get preventionOne_text_one_title;

  /// No description provided for @preventionOne_text_one_content.
  ///
  /// In de, this message translates to:
  /// **'Menschliche Zellen teilen sich. Versagen die Reparaturmechanismen des Körpers, kann es passieren, dass Zellen unkontrolliert wuchern. Starke UV-Strahlung kann ein Grund hierfür sein.'**
  String get preventionOne_text_one_content;

  /// No description provided for @preventionOne_buttonText.
  ///
  /// In de, this message translates to:
  /// **'Schutzmaßnahmen'**
  String get preventionOne_buttonText;

  /// No description provided for @preventionTwo_title.
  ///
  /// In de, this message translates to:
  /// **'Vorbeugung'**
  String get preventionTwo_title;

  /// No description provided for @preventionTwo_text_one_title.
  ///
  /// In de, this message translates to:
  /// **'Sonne meiden'**
  String get preventionTwo_text_one_title;

  /// No description provided for @preventionTwo_text_one_content.
  ///
  /// In de, this message translates to:
  /// **'Sich im Freien zu bewegen ist gut für Körper und Seele. Dennoch ist es von Vorteil, Aktivitäten in die Abend- und Morgenstunden zu verlegen, um sich vor übermäßiger Sonne zu schützen.'**
  String get preventionTwo_text_one_content;

  /// No description provided for @preventionTwo_text_two_title.
  ///
  /// In de, this message translates to:
  /// **'Schatten nutzen'**
  String get preventionTwo_text_two_title;

  /// No description provided for @preventionTwo_text_two_content.
  ///
  /// In de, this message translates to:
  /// **'Vermeiden sie direkte und lange Sonnenaussetzung. Nutzen sie Sonnenschirme oder tragen sie lange Kleidung.'**
  String get preventionTwo_text_two_content;

  /// No description provided for @preventionTwo_text_three_title.
  ///
  /// In de, this message translates to:
  /// **'Vorsorge Termine'**
  String get preventionTwo_text_three_title;

  /// No description provided for @preventionTwo_text_three_content.
  ///
  /// In de, this message translates to:
  /// **'Hautkrebs ist oft von genetischen Faktoren abhängig. Eine Untersuchung (Screening) hilft Hautkrebs auszuschließen.'**
  String get preventionTwo_text_three_content;

  /// No description provided for @preventionTwo_buttonText_home.
  ///
  /// In de, this message translates to:
  /// **'Zum Hauptmenu'**
  String get preventionTwo_buttonText_home;

  /// No description provided for @preventionTwo_buttonText_protection.
  ///
  /// In de, this message translates to:
  /// **'Mehr über Screenings'**
  String get preventionTwo_buttonText_protection;

  /// No description provided for @screeningOne_title.
  ///
  /// In de, this message translates to:
  /// **'Das Screening'**
  String get screeningOne_title;

  /// No description provided for @screeningOne_text_one_title.
  ///
  /// In de, this message translates to:
  /// **'Terminvereinbarung'**
  String get screeningOne_text_one_title;

  /// No description provided for @screeningOne_text_one_partOne.
  ///
  /// In de, this message translates to:
  /// **'Sie können '**
  String get screeningOne_text_one_partOne;

  /// No description provided for @screeningOne_text_one_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'Termine '**
  String get screeningOne_text_one_highlightOne;

  /// No description provided for @screeningOne_text_one_partTwo.
  ///
  /// In de, this message translates to:
  /// **'direkt bei den Helfern in der '**
  String get screeningOne_text_one_partTwo;

  /// No description provided for @screeningOne_text_one_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **'Arztpraxis '**
  String get screeningOne_text_one_highlightTwo;

  /// No description provided for @screeningOne_text_one_partThree.
  ///
  /// In de, this message translates to:
  /// **'vereinbaren oder '**
  String get screeningOne_text_one_partThree;

  /// No description provided for @screeningOne_text_one_highlightThree.
  ///
  /// In de, this message translates to:
  /// **'via Telefon.'**
  String get screeningOne_text_one_highlightThree;

  /// No description provided for @screeningOne_text_one_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningOne_text_one_partFour;

  /// No description provided for @screeningOne_text_two_partOne.
  ///
  /// In de, this message translates to:
  /// **'Sie haben die '**
  String get screeningOne_text_two_partOne;

  /// No description provided for @screeningOne_text_two_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'Wahl '**
  String get screeningOne_text_two_highlightOne;

  /// No description provided for @screeningOne_text_two_partTwo.
  ///
  /// In de, this message translates to:
  /// **', ob ein '**
  String get screeningOne_text_two_partTwo;

  /// No description provided for @screeningOne_text_two_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **'Arzt oder eine Ärztin '**
  String get screeningOne_text_two_highlightTwo;

  /// No description provided for @screeningOne_text_two_partThree.
  ///
  /// In de, this message translates to:
  /// **'das Screening durchführt.'**
  String get screeningOne_text_two_partThree;

  /// No description provided for @screeningOne_text_two_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningOne_text_two_highlightThree;

  /// No description provided for @screeningOne_text_two_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningOne_text_two_partFour;

  /// No description provided for @screeningOne_text_three_partOne.
  ///
  /// In de, this message translates to:
  /// **'Termine sind für alle '**
  String get screeningOne_text_three_partOne;

  /// No description provided for @screeningOne_text_three_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'über 35 Jahre kostenlos.'**
  String get screeningOne_text_three_highlightOne;

  /// No description provided for @screeningOne_text_three_partTwo.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningOne_text_three_partTwo;

  /// No description provided for @screeningOne_text_three_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningOne_text_three_highlightTwo;

  /// No description provided for @screeningOne_text_three_partThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningOne_text_three_partThree;

  /// No description provided for @screeningOne_text_three_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningOne_text_three_highlightThree;

  /// No description provided for @screeningOne_text_three_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningOne_text_three_partFour;

  /// No description provided for @screeningOne_buttonText.
  ///
  /// In de, this message translates to:
  /// **'Untersuchung'**
  String get screeningOne_buttonText;

  /// No description provided for @screeningTwo_title.
  ///
  /// In de, this message translates to:
  /// **'Das Screening'**
  String get screeningTwo_title;

  /// No description provided for @screeningTwo_text_one_title.
  ///
  /// In de, this message translates to:
  /// **'Untersuchung'**
  String get screeningTwo_text_one_title;

  /// No description provided for @screeningTwo_text_one_partOne.
  ///
  /// In de, this message translates to:
  /// **'Der Arzt oder die Ärztin untersucht die '**
  String get screeningTwo_text_one_partOne;

  /// No description provided for @screeningTwo_text_one_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'Haut am ganzen Körper '**
  String get screeningTwo_text_one_highlightOne;

  /// No description provided for @screeningTwo_text_one_partTwo.
  ///
  /// In de, this message translates to:
  /// **'(inklusive Kopfhaut, Mundschleimhaut, Intimbereich & Fußsohlen).'**
  String get screeningTwo_text_one_partTwo;

  /// No description provided for @screeningTwo_text_one_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_one_highlightTwo;

  /// No description provided for @screeningTwo_text_one_partThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_one_partThree;

  /// No description provided for @screeningTwo_text_one_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_one_highlightThree;

  /// No description provided for @screeningTwo_text_one_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_one_partFour;

  /// No description provided for @screeningTwo_text_two_partOne.
  ///
  /// In de, this message translates to:
  /// **'Manchmal wird dazu eine \'beleuchtete Lupe\' zur Hilfe genommen.'**
  String get screeningTwo_text_two_partOne;

  /// No description provided for @screeningTwo_text_two_highlightOne.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_two_highlightOne;

  /// No description provided for @screeningTwo_text_two_partTwo.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_two_partTwo;

  /// No description provided for @screeningTwo_text_two_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_two_highlightTwo;

  /// No description provided for @screeningTwo_text_two_partThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_two_partThree;

  /// No description provided for @screeningTwo_text_two_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_two_highlightThree;

  /// No description provided for @screeningTwo_text_two_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_two_partFour;

  /// No description provided for @screeningTwo_text_three_partOne.
  ///
  /// In de, this message translates to:
  /// **'Die Haut wird abschnittsweise angeschaut. Sie sind also '**
  String get screeningTwo_text_three_partOne;

  /// No description provided for @screeningTwo_text_three_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'niemals völlig nackt!'**
  String get screeningTwo_text_three_highlightOne;

  /// No description provided for @screeningTwo_text_three_partTwo.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_three_partTwo;

  /// No description provided for @screeningTwo_text_three_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_three_highlightTwo;

  /// No description provided for @screeningTwo_text_three_partThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_three_partThree;

  /// No description provided for @screeningTwo_text_three_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_three_highlightThree;

  /// No description provided for @screeningTwo_text_three_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningTwo_text_three_partFour;

  /// No description provided for @screeningTwo_buttonText.
  ///
  /// In de, this message translates to:
  /// **'Arztgespräch'**
  String get screeningTwo_buttonText;

  /// No description provided for @screeningThree_title.
  ///
  /// In de, this message translates to:
  /// **'Das Screening'**
  String get screeningThree_title;

  /// No description provided for @screeningThree_text_one_title.
  ///
  /// In de, this message translates to:
  /// **'Arztgespräch'**
  String get screeningThree_text_one_title;

  /// No description provided for @screeningThree_text_one_partOne.
  ///
  /// In de, this message translates to:
  /// **'Die Ärztin oder der Arzt teilt Ihnen das '**
  String get screeningThree_text_one_partOne;

  /// No description provided for @screeningThree_text_one_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'Ergebnis der Untersuchung '**
  String get screeningThree_text_one_highlightOne;

  /// No description provided for @screeningThree_text_one_partTwo.
  ///
  /// In de, this message translates to:
  /// **'mit.'**
  String get screeningThree_text_one_partTwo;

  /// No description provided for @screeningThree_text_one_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningThree_text_one_highlightTwo;

  /// No description provided for @screeningThree_text_one_partThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningThree_text_one_partThree;

  /// No description provided for @screeningThree_text_one_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningThree_text_one_highlightThree;

  /// No description provided for @screeningThree_text_one_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningThree_text_one_partFour;

  /// No description provided for @screeningThree_text_two_partOne.
  ///
  /// In de, this message translates to:
  /// **'Sie werden auch zu den '**
  String get screeningThree_text_two_partOne;

  /// No description provided for @screeningThree_text_two_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'Risikofaktoren '**
  String get screeningThree_text_two_highlightOne;

  /// No description provided for @screeningThree_text_two_partTwo.
  ///
  /// In de, this message translates to:
  /// **'und zum '**
  String get screeningThree_text_two_partTwo;

  /// No description provided for @screeningThree_text_two_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **'UV-Schutz beraten. '**
  String get screeningThree_text_two_highlightTwo;

  /// No description provided for @screeningThree_text_two_partThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningThree_text_two_partThree;

  /// No description provided for @screeningThree_text_two_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningThree_text_two_highlightThree;

  /// No description provided for @screeningThree_text_two_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningThree_text_two_partFour;

  /// No description provided for @screeningThree_text_three_partOne.
  ///
  /// In de, this message translates to:
  /// **'Ihr Arzt oder Ärztin zeigt ihnen, wie Sie '**
  String get screeningThree_text_three_partOne;

  /// No description provided for @screeningThree_text_three_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'sich selbst untersuchen '**
  String get screeningThree_text_three_highlightOne;

  /// No description provided for @screeningThree_text_three_partTwo.
  ///
  /// In de, this message translates to:
  /// **'können, angepasst an ihre '**
  String get screeningThree_text_three_partTwo;

  /// No description provided for @screeningThree_text_three_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **'individuelle Situation. '**
  String get screeningThree_text_three_highlightTwo;

  /// No description provided for @screeningThree_text_three_partThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningThree_text_three_partThree;

  /// No description provided for @screeningThree_text_three_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningThree_text_three_highlightThree;

  /// No description provided for @screeningThree_text_three_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningThree_text_three_partFour;

  /// No description provided for @screeningThree_buttonText.
  ///
  /// In de, this message translates to:
  /// **'Im Verdachtsfall'**
  String get screeningThree_buttonText;

  /// No description provided for @screeningFour_title.
  ///
  /// In de, this message translates to:
  /// **'Im Verdachtsfall'**
  String get screeningFour_title;

  /// No description provided for @screeningFour_text_one_title.
  ///
  /// In de, this message translates to:
  /// **'Weitere Schritte'**
  String get screeningFour_text_one_title;

  /// No description provided for @screeningFour_text_one_partOne.
  ///
  /// In de, this message translates to:
  /// **'Ihr Hausarzt kann sie nach einer Untersuchung zum '**
  String get screeningFour_text_one_partOne;

  /// No description provided for @screeningFour_text_one_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'Hautarzt '**
  String get screeningFour_text_one_highlightOne;

  /// No description provided for @screeningFour_text_one_partTwo.
  ///
  /// In de, this message translates to:
  /// **'oder Hautärztin '**
  String get screeningFour_text_one_partTwo;

  /// No description provided for @screeningFour_text_one_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **'weiterüberweisen. '**
  String get screeningFour_text_one_highlightTwo;

  /// No description provided for @screeningFour_text_one_partThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFour_text_one_partThree;

  /// No description provided for @screeningFour_text_one_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFour_text_one_highlightThree;

  /// No description provided for @screeningFour_text_one_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFour_text_one_partFour;

  /// No description provided for @screeningFour_text_two_partOne.
  ///
  /// In de, this message translates to:
  /// **'Manchmal sind weitere Untersuchungen und '**
  String get screeningFour_text_two_partOne;

  /// No description provided for @screeningFour_text_two_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'Gewebeproben ihrer Haut '**
  String get screeningFour_text_two_highlightOne;

  /// No description provided for @screeningFour_text_two_partTwo.
  ///
  /// In de, this message translates to:
  /// **'notwendig. '**
  String get screeningFour_text_two_partTwo;

  /// No description provided for @screeningFour_text_two_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFour_text_two_highlightTwo;

  /// No description provided for @screeningFour_text_two_partThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFour_text_two_partThree;

  /// No description provided for @screeningFour_text_two_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFour_text_two_highlightThree;

  /// No description provided for @screeningFour_text_two_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFour_text_two_partFour;

  /// No description provided for @screeningFour_buttonText.
  ///
  /// In de, this message translates to:
  /// **'Gewebeprobe'**
  String get screeningFour_buttonText;

  /// No description provided for @screeningFive_title.
  ///
  /// In de, this message translates to:
  /// **'Im Verdachtsfall'**
  String get screeningFive_title;

  /// No description provided for @screeningFive_text_one_title.
  ///
  /// In de, this message translates to:
  /// **'Gewebeprobe'**
  String get screeningFive_text_one_title;

  /// No description provided for @screeningFive_text_one_partOne.
  ///
  /// In de, this message translates to:
  /// **'Eine '**
  String get screeningFive_text_one_partOne;

  /// No description provided for @screeningFive_text_one_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'Gewebeprobe '**
  String get screeningFive_text_one_highlightOne;

  /// No description provided for @screeningFive_text_one_partTwo.
  ///
  /// In de, this message translates to:
  /// **'wird mit '**
  String get screeningFive_text_one_partTwo;

  /// No description provided for @screeningFive_text_one_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **'örtlicher Betäubung '**
  String get screeningFive_text_one_highlightTwo;

  /// No description provided for @screeningFive_text_one_partThree.
  ///
  /// In de, this message translates to:
  /// **'entnommen.'**
  String get screeningFive_text_one_partThree;

  /// No description provided for @screeningFive_text_one_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFive_text_one_highlightThree;

  /// No description provided for @screeningFive_text_one_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFive_text_one_partFour;

  /// No description provided for @screeningFive_text_two_partOne.
  ///
  /// In de, this message translates to:
  /// **'Die Gewebeprobe wird dann weiter '**
  String get screeningFive_text_two_partOne;

  /// No description provided for @screeningFive_text_two_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'untersucht und begutachtet.'**
  String get screeningFive_text_two_highlightOne;

  /// No description provided for @screeningFive_text_two_partTwo.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFive_text_two_partTwo;

  /// No description provided for @screeningFive_text_two_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFive_text_two_highlightTwo;

  /// No description provided for @screeningFive_text_two_partThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFive_text_two_partThree;

  /// No description provided for @screeningFive_text_two_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFive_text_two_highlightThree;

  /// No description provided for @screeningFive_text_two_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFive_text_two_partFour;

  /// No description provided for @screeningFive_text_three_partOne.
  ///
  /// In de, this message translates to:
  /// **'Vielleicht machen Sie sich während des Wartens Sorgen, aber '**
  String get screeningFive_text_three_partOne;

  /// No description provided for @screeningFive_text_three_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'meistens '**
  String get screeningFive_text_three_highlightOne;

  /// No description provided for @screeningFive_text_three_partTwo.
  ///
  /// In de, this message translates to:
  /// **'stellt sich heraus, dass die Hautstelle '**
  String get screeningFive_text_three_partTwo;

  /// No description provided for @screeningFive_text_three_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **'harmlos '**
  String get screeningFive_text_three_highlightTwo;

  /// No description provided for @screeningFive_text_three_partThree.
  ///
  /// In de, this message translates to:
  /// **'war.'**
  String get screeningFive_text_three_partThree;

  /// No description provided for @screeningFive_text_three_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFive_text_three_highlightThree;

  /// No description provided for @screeningFive_text_three_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningFive_text_three_partFour;

  /// No description provided for @screeningFive_buttonText.
  ///
  /// In de, this message translates to:
  /// **'Positiver Befund'**
  String get screeningFive_buttonText;

  /// No description provided for @screeningSix_title.
  ///
  /// In de, this message translates to:
  /// **'Im Fall von Hautkrebs'**
  String get screeningSix_title;

  /// No description provided for @screeningSix_text_one_title.
  ///
  /// In de, this message translates to:
  /// **'Individuelle Behandlung'**
  String get screeningSix_text_one_title;

  /// No description provided for @screeningSix_text_one_partOne.
  ///
  /// In de, this message translates to:
  /// **'Ihr Arzt oder Ärztin bespricht '**
  String get screeningSix_text_one_partOne;

  /// No description provided for @screeningSix_text_one_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'mit ihnen '**
  String get screeningSix_text_one_highlightOne;

  /// No description provided for @screeningSix_text_one_partTwo.
  ///
  /// In de, this message translates to:
  /// **'welche '**
  String get screeningSix_text_one_partTwo;

  /// No description provided for @screeningSix_text_one_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **'Behandlungsmaßnahmen '**
  String get screeningSix_text_one_highlightTwo;

  /// No description provided for @screeningSix_text_one_partThree.
  ///
  /// In de, this message translates to:
  /// **'erforderlich sind.'**
  String get screeningSix_text_one_partThree;

  /// No description provided for @screeningSix_text_one_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningSix_text_one_highlightThree;

  /// No description provided for @screeningSix_text_one_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningSix_text_one_partFour;

  /// No description provided for @screeningSix_text_two_partOne.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningSix_text_two_partOne;

  /// No description provided for @screeningSix_text_two_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'Hautkrebs ist behandelbar. Je früher '**
  String get screeningSix_text_two_highlightOne;

  /// No description provided for @screeningSix_text_two_partTwo.
  ///
  /// In de, this message translates to:
  /// **'man ihn erkennt, '**
  String get screeningSix_text_two_partTwo;

  /// No description provided for @screeningSix_text_two_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **'desto besser '**
  String get screeningSix_text_two_highlightTwo;

  /// No description provided for @screeningSix_text_two_partThree.
  ///
  /// In de, this message translates to:
  /// **'sind die Heilungschancen.'**
  String get screeningSix_text_two_partThree;

  /// No description provided for @screeningSix_text_two_highlightThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningSix_text_two_highlightThree;

  /// No description provided for @screeningSix_text_two_partFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get screeningSix_text_two_partFour;

  /// No description provided for @screeningSix_buttonText_home.
  ///
  /// In de, this message translates to:
  /// **'Zum Hauptmenu'**
  String get screeningSix_buttonText_home;

  /// No description provided for @screeningSix_buttonText_protection.
  ///
  /// In de, this message translates to:
  /// **'Mehr über Vorbeugung'**
  String get screeningSix_buttonText_protection;

  /// No description provided for @avatar_actionText_notSpecified.
  ///
  /// In de, this message translates to:
  /// **'keine Angabe'**
  String get avatar_actionText_notSpecified;

  /// No description provided for @avatar_popup_warning.
  ///
  /// In de, this message translates to:
  /// **'Bitte geben sie alle Daten an'**
  String get avatar_popup_warning;

  /// No description provided for @avatarOne_radio_title.
  ///
  /// In de, this message translates to:
  /// **'Wie ist ihr Geschlecht?'**
  String get avatarOne_radio_title;

  /// No description provided for @avatarOne_radio_textOne.
  ///
  /// In de, this message translates to:
  /// **'Männlich'**
  String get avatarOne_radio_textOne;

  /// No description provided for @avatarOne_radio_textTwo.
  ///
  /// In de, this message translates to:
  /// **'Weiblich'**
  String get avatarOne_radio_textTwo;

  /// No description provided for @avatarOne_radio_textThree.
  ///
  /// In de, this message translates to:
  /// **'Divers'**
  String get avatarOne_radio_textThree;

  /// No description provided for @avatarOne_slider_title.
  ///
  /// In de, this message translates to:
  /// **'Wie alt sind Sie?'**
  String get avatarOne_slider_title;

  /// No description provided for @avatarOne_slider_textOne.
  ///
  /// In de, this message translates to:
  /// **'Unter\n35'**
  String get avatarOne_slider_textOne;

  /// No description provided for @avatarOne_slider_textTwo.
  ///
  /// In de, this message translates to:
  /// **'45'**
  String get avatarOne_slider_textTwo;

  /// No description provided for @avatarOne_slider_textThree.
  ///
  /// In de, this message translates to:
  /// **'55'**
  String get avatarOne_slider_textThree;

  /// No description provided for @avatarOne_slider_textFour.
  ///
  /// In de, this message translates to:
  /// **'65'**
  String get avatarOne_slider_textFour;

  /// No description provided for @avatarOne_slider_textFive.
  ///
  /// In de, this message translates to:
  /// **'über\n75'**
  String get avatarOne_slider_textFive;

  /// No description provided for @avatarOne_popup_title.
  ///
  /// In de, this message translates to:
  /// **'Risiko Rechner für Schwarzen Hautkrebs'**
  String get avatarOne_popup_title;

  /// No description provided for @avatarOne_popup_text.
  ///
  /// In de, this message translates to:
  /// **'Dieser Risiko-Rechner bezieht sich ausschließlich auf den schwarzen Hautkrebs (malignes Melanom)'**
  String get avatarOne_popup_text;

  /// No description provided for @avatarOne_popup_button.
  ///
  /// In de, this message translates to:
  /// **'Verstanden'**
  String get avatarOne_popup_button;

  /// No description provided for @avatarTwo_radio_title.
  ///
  /// In de, this message translates to:
  /// **'Was ist ihre natürliche Haarfarbe?'**
  String get avatarTwo_radio_title;

  /// No description provided for @avatarTwo_radio_textOne.
  ///
  /// In de, this message translates to:
  /// **'Blond'**
  String get avatarTwo_radio_textOne;

  /// No description provided for @avatarTwo_radio_textTwo.
  ///
  /// In de, this message translates to:
  /// **'Orange\nRot'**
  String get avatarTwo_radio_textTwo;

  /// No description provided for @avatarTwo_radio_textThree.
  ///
  /// In de, this message translates to:
  /// **'Hell\nBraun'**
  String get avatarTwo_radio_textThree;

  /// No description provided for @avatarTwo_radio_textFour.
  ///
  /// In de, this message translates to:
  /// **'Dunkel\nBraun'**
  String get avatarTwo_radio_textFour;

  /// No description provided for @avatarTwo_radio_textFive.
  ///
  /// In de, this message translates to:
  /// **'Schwarz'**
  String get avatarTwo_radio_textFive;

  /// No description provided for @avatarThree_radio_title.
  ///
  /// In de, this message translates to:
  /// **'Wie viele schwere und schmerzhafte Sonnenbrände hatten sie?'**
  String get avatarThree_radio_title;

  /// No description provided for @avatarThree_radio_textOne.
  ///
  /// In de, this message translates to:
  /// **'Keine'**
  String get avatarThree_radio_textOne;

  /// No description provided for @avatarThree_radio_textTwo.
  ///
  /// In de, this message translates to:
  /// **'Wenige\n1-2'**
  String get avatarThree_radio_textTwo;

  /// No description provided for @avatarThree_radio_textThree.
  ///
  /// In de, this message translates to:
  /// **'Mehrere\n3-9'**
  String get avatarThree_radio_textThree;

  /// No description provided for @avatarThree_radio_textFour.
  ///
  /// In de, this message translates to:
  /// **'Viele\nüber 10'**
  String get avatarThree_radio_textFour;

  /// No description provided for @avatarThree_radio_textFive.
  ///
  /// In de, this message translates to:
  /// **'Weiß nicht'**
  String get avatarThree_radio_textFive;

  /// No description provided for @avatarFour_title.
  ///
  /// In de, this message translates to:
  /// **'Muttermale und Hautflecken'**
  String get avatarFour_title;

  /// No description provided for @avatarFour_text_one_title.
  ///
  /// In de, this message translates to:
  /// **'Muttermale'**
  String get avatarFour_text_one_title;

  /// No description provided for @avatarFour_text_one_partOne.
  ///
  /// In de, this message translates to:
  /// **'Muttermale sind dunkle Flecken auf der Haut. Es gibt Große oder auch Kleine.\n\nManchmal sind Muttermale Orte an denen sich Hautkrebs bilden kann.\n\nEs gibt verschiedene Arten von Muttermalen. '**
  String get avatarFour_text_one_partOne;

  /// No description provided for @avatarFour_text_one_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'Meistens sind sie ungefährlich, '**
  String get avatarFour_text_one_highlightOne;

  /// No description provided for @avatarFour_text_one_partTwo.
  ///
  /// In de, this message translates to:
  /// **'manchmal sollten sie '**
  String get avatarFour_text_one_partTwo;

  /// No description provided for @avatarFour_text_one_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **'beobachtet '**
  String get avatarFour_text_one_highlightTwo;

  /// No description provided for @avatarFour_text_one_partThree.
  ///
  /// In de, this message translates to:
  /// **'werden.'**
  String get avatarFour_text_one_partThree;

  /// No description provided for @avatarFour_text_two_title.
  ///
  /// In de, this message translates to:
  /// **'Sommersprossen'**
  String get avatarFour_text_two_title;

  /// No description provided for @avatarFour_text_two_partOne.
  ///
  /// In de, this message translates to:
  /// **'Im Gegensatz zu Muttermalen sind Sommersprossen '**
  String get avatarFour_text_two_partOne;

  /// No description provided for @avatarFour_text_two_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'harmlos. '**
  String get avatarFour_text_two_highlightOne;

  /// No description provided for @avatarFour_text_two_partTwo.
  ///
  /// In de, this message translates to:
  /// **'Sommersprossenträger sollten aber besonders vorsichtig in der Sonne sein.'**
  String get avatarFour_text_two_partTwo;

  /// No description provided for @avatarFour_text_two_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **''**
  String get avatarFour_text_two_highlightTwo;

  /// No description provided for @avatarFour_text_two_partThree.
  ///
  /// In de, this message translates to:
  /// **''**
  String get avatarFour_text_two_partThree;

  /// No description provided for @avatarFive_radio_title.
  ///
  /// In de, this message translates to:
  /// **'Wie viele Muttermale mit mehr als 3mm Durchmesser haben sie auf den Armen?'**
  String get avatarFive_radio_title;

  /// No description provided for @avatarFive_radio_textOne.
  ///
  /// In de, this message translates to:
  /// **'Keine'**
  String get avatarFive_radio_textOne;

  /// No description provided for @avatarFive_radio_textTwo.
  ///
  /// In de, this message translates to:
  /// **'Wenige\n1-2'**
  String get avatarFive_radio_textTwo;

  /// No description provided for @avatarFive_radio_textThree.
  ///
  /// In de, this message translates to:
  /// **'Mehrere\n3-9'**
  String get avatarFive_radio_textThree;

  /// No description provided for @avatarFive_radio_textFour.
  ///
  /// In de, this message translates to:
  /// **'Viele\nüber 10'**
  String get avatarFive_radio_textFour;

  /// No description provided for @avatarFive_radio_textFive.
  ///
  /// In de, this message translates to:
  /// **'Weiß nicht'**
  String get avatarFive_radio_textFive;

  /// No description provided for @avatarSix_title.
  ///
  /// In de, this message translates to:
  /// **'Außergewöhnliche Hautflecken'**
  String get avatarSix_title;

  /// No description provided for @avatarSix_text_one_title.
  ///
  /// In de, this message translates to:
  /// **'Außergewöhnliche Hautflecken'**
  String get avatarSix_text_one_title;

  /// No description provided for @avatarSix_text_one_partOne.
  ///
  /// In de, this message translates to:
  /// **'Insbesondere für Menschen mit '**
  String get avatarSix_text_one_partOne;

  /// No description provided for @avatarSix_text_one_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'Risikofaktoren '**
  String get avatarSix_text_one_highlightOne;

  /// No description provided for @avatarSix_text_one_partTwo.
  ///
  /// In de, this message translates to:
  /// **'ist es wichtig, ihre Haut auf Veränderungen zu untersuchen und auffällige Muttermale einem Arzt zu zeigen.\n\nAuf den '**
  String get avatarSix_text_one_partTwo;

  /// No description provided for @avatarSix_text_one_highlightTwo.
  ///
  /// In de, this message translates to:
  /// **'ersten Blick '**
  String get avatarSix_text_one_highlightTwo;

  /// No description provided for @avatarSix_text_one_partThree.
  ///
  /// In de, this message translates to:
  /// **'können '**
  String get avatarSix_text_one_partThree;

  /// No description provided for @avatarSix_text_one_highlightThree.
  ///
  /// In de, this message translates to:
  /// **'harmlose Muttermale oder Leberflecken krankhaften Veränderungen '**
  String get avatarSix_text_one_highlightThree;

  /// No description provided for @avatarSix_text_one_partFour.
  ///
  /// In de, this message translates to:
  /// **'ähneln. Ein Laie kann das kaum unterscheiden.\n\nWenn bereits Metastasen (Tochtergeschwüre) vorhanden sind, ist die Behandlung aufwändiger und die Heilungschancen können schlechter sein.'**
  String get avatarSix_text_one_partFour;

  /// No description provided for @avatarSix_text_one_highlightFour.
  ///
  /// In de, this message translates to:
  /// **''**
  String get avatarSix_text_one_highlightFour;

  /// No description provided for @avatarSix_text_one_partFive.
  ///
  /// In de, this message translates to:
  /// **''**
  String get avatarSix_text_one_partFive;

  /// No description provided for @avatarSix_text_two.
  ///
  /// In de, this message translates to:
  /// **'Hautkrebs ist behandelbar. Wenn man ihn schnell findet, sind die Heilungschancen groß. Deshalb ist Vorsorge so wichtig.'**
  String get avatarSix_text_two;

  /// No description provided for @avatarSeven_text.
  ///
  /// In de, this message translates to:
  /// **'Hatten sie bereits Hautkrebs Erkrankungen in ihrer Familie?'**
  String get avatarSeven_text;

  /// No description provided for @avatarSeven_button_no.
  ///
  /// In de, this message translates to:
  /// **'Nein'**
  String get avatarSeven_button_no;

  /// No description provided for @avatarSeven_button_yes.
  ///
  /// In de, this message translates to:
  /// **'Ja'**
  String get avatarSeven_button_yes;

  /// No description provided for @avatarSeven_actionText.
  ///
  /// In de, this message translates to:
  /// **'Keine Angabe'**
  String get avatarSeven_actionText;

  /// No description provided for @resultCheck_text.
  ///
  /// In de, this message translates to:
  /// **'Wollen sie Ihr Hautkrebs Risiko erfahren?'**
  String get resultCheck_text;

  /// No description provided for @resultCheck_button_no.
  ///
  /// In de, this message translates to:
  /// **'Nein'**
  String get resultCheck_button_no;

  /// No description provided for @resultCheck_button_yes.
  ///
  /// In de, this message translates to:
  /// **'Ja, klar'**
  String get resultCheck_button_yes;

  /// No description provided for @noResult_title.
  ///
  /// In de, this message translates to:
  /// **'Über Hautkrebsrisiko'**
  String get noResult_title;

  /// No description provided for @noResult_text_partOne.
  ///
  /// In de, this message translates to:
  /// **'Ein Risikowert ist nur eine Statistik. Keine Diagnose. Machen sie einen '**
  String get noResult_text_partOne;

  /// No description provided for @noResult_text_highlightOne.
  ///
  /// In de, this message translates to:
  /// **'Termin '**
  String get noResult_text_highlightOne;

  /// No description provided for @noResult_text_partTwo.
  ///
  /// In de, this message translates to:
  /// **'bei ihrem Haus- oder Hautarzt!'**
  String get noResult_text_partTwo;

  /// No description provided for @noResult_button.
  ///
  /// In de, this message translates to:
  /// **'Risiko doch ansehen'**
  String get noResult_button;

  /// No description provided for @resultOne_title_unknownRisk.
  ///
  /// In de, this message translates to:
  /// **'Ihr Risiko ist unbekannt'**
  String get resultOne_title_unknownRisk;

  /// No description provided for @resultOne_title_lowRisk.
  ///
  /// In de, this message translates to:
  /// **'Ihr Risiko ist leicht erhöht'**
  String get resultOne_title_lowRisk;

  /// No description provided for @resultOne_title_mediumRisk.
  ///
  /// In de, this message translates to:
  /// **'Ihr Risiko ist erhöht'**
  String get resultOne_title_mediumRisk;

  /// No description provided for @resultOne_title_highRisk.
  ///
  /// In de, this message translates to:
  /// **'Ihr Risiko ist stark erhöht'**
  String get resultOne_title_highRisk;

  /// No description provided for @resultOne_title_veryHighRisk.
  ///
  /// In de, this message translates to:
  /// **'Ihr Risiko ist sehr stark erhöht'**
  String get resultOne_title_veryHighRisk;

  /// No description provided for @resultOne_text.
  ///
  /// In de, this message translates to:
  /// **'Lassen sie sich gratis untersuchen, indem sie hier in der Praxis einen Termin vereinbaren. Fragen sie einfach einen Mitarbeiter der Praxis!'**
  String get resultOne_text;

  /// No description provided for @resultTwo_title.
  ///
  /// In de, this message translates to:
  /// **'Ihre Einzelnen Antworten'**
  String get resultTwo_title;

  /// No description provided for @resultTwo_text_one.
  ///
  /// In de, this message translates to:
  /// **'Ihr Geschlecht'**
  String get resultTwo_text_one;

  /// No description provided for @resultTwo_text_two.
  ///
  /// In de, this message translates to:
  /// **'Ihr Alter'**
  String get resultTwo_text_two;

  /// No description provided for @resultTwo_text_three.
  ///
  /// In de, this message translates to:
  /// **'Ihre Haarfarbe'**
  String get resultTwo_text_three;

  /// No description provided for @resultTwo_text_four.
  ///
  /// In de, this message translates to:
  /// **'Starke Sonnenbrände'**
  String get resultTwo_text_four;

  /// No description provided for @resultTwo_text_five.
  ///
  /// In de, this message translates to:
  /// **'Anzahl ihrer Muttermale'**
  String get resultTwo_text_five;

  /// No description provided for @resultTwo_text_six.
  ///
  /// In de, this message translates to:
  /// **'Hautkrebs in der Familie'**
  String get resultTwo_text_six;

  /// No description provided for @resultThree_title.
  ///
  /// In de, this message translates to:
  /// **'Ihre Risiko-Punkte'**
  String get resultThree_title;

  /// No description provided for @resultThree_text_one_title.
  ///
  /// In de, this message translates to:
  /// **'Sprechen sie mit ihrem Arzt über Hautkrebs!'**
  String get resultThree_text_one_title;

  /// No description provided for @resultThree_text_one_text.
  ///
  /// In de, this message translates to:
  /// **'Termine können sie telefonisch oder direkt in ihrem bei ihrem Praxispersonal vereinbaren!'**
  String get resultThree_text_one_text;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(_lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['de', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations _lookupAppLocalizations(Locale locale) {
  


// Lookup logic when only language code is specified.
switch (locale.languageCode) {
  case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
}


  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
