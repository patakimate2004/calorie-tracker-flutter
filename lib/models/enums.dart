enum ActivityLevel {csekely, mersekelt, kozepes, atlagonFeluli, nagyonMagas}

extension ActivityLevelExtension on ActivityLevel {
  String get displayActivityName {
    switch (this) {
      case ActivityLevel.csekely:
        return "Csekély";
      case ActivityLevel.mersekelt:
        return "Mérsékelt";
      case ActivityLevel.kozepes:
        return "Közepes";
      case ActivityLevel.atlagonFeluli:
        return "Átlagon felüli";
      case ActivityLevel.nagyonMagas:
        return "Nagyon magas";
    }
  }
}


enum GenderType {female, male}

extension GenderTypeExtension on GenderType {
  String get displayGenderName {
    switch (this) {
      case GenderType.female:
        return "Nő";
      case GenderType.male:
        return "Férfi";
  }
  }
}

enum TargetLevel {fogyas, szintfentartas, tomegnoveles}

extension TargetLevelExtension on TargetLevel {
  String get displayTargetName {
    switch (this) {
      case TargetLevel.fogyas:
        return "Fogyás";
      case TargetLevel.szintfentartas:
        return "Szintfentartás";
      case TargetLevel.tomegnoveles:
        return "Tömegnövelés";
  }
  }
}

