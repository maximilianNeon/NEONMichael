import 'package:neon_web/core/enums.dart';

abstract class PatternEntity {
  List patternList;

  PatternEntity({required this.patternList});
}

class Onboarding extends PatternEntity {
  Onboarding({
    required List<OnboardingPatterns> onboarding,
  }) : super(patternList: onboarding);
}

class Data extends PatternEntity {
  Data({required List<DataPatterns> pData}) : super(patternList: pData);
}

class UserCollection extends PatternEntity {
  UserCollection({required List<UserCollectionsPatterns> userCollection})
      : super(patternList: userCollection);
}

class Communication extends PatternEntity {
  Communication({required List<CommunicationPatterns> communication})
      : super(patternList: communication);
}

class Mis extends PatternEntity {
  Mis({required List<MisPatterns> mis}) : super(patternList: mis);
}

class CommerceAndFinance extends PatternEntity {
  CommerceAndFinance(
      {required List<CommerceAndFinancePatterns> commerceAndFinance})
      : super(patternList: commerceAndFinance);
}

class Social extends PatternEntity {
  Social({required List<SocialPatterns> socialPattern})
      : super(patternList: socialPattern);
}

class Utility extends PatternEntity {
  Utility({required List<UtilityPatterns> utilitypatterns})
      : super(patternList: utilitypatterns);
}

class Content extends PatternEntity {
  Content({required List<ContentPatterns> contentPatterns})
      : super(patternList: contentPatterns);
}

class Actions extends PatternEntity {
  Actions({required List<ActionsPatterns> actionpatterns})
      : super(patternList: actionpatterns);
}
