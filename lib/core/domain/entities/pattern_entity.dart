import 'package:neon_web/core/enums.dart';

abstract class PatternEntity {
  String? header;
  List<Object> patternList;

  PatternEntity({required this.patternList, this.header});
}

class Onboarding extends PatternEntity {
  Onboarding({
    required List<OnboardingPatterns> onboarding,
    final String? header,
  }) : super(patternList: onboarding, header: header);
}

class Data extends PatternEntity {
  Data({
    required List<DataPatterns> pData,
    final String? header,
  }) : super(patternList: pData, header: header);
}

class UserCollection extends PatternEntity {
  UserCollection({
    required List<UserCollectionsPatterns> userCollection,
    final String? header,
  }) : super(patternList: userCollection, header: header);
}

class Communication extends PatternEntity {
  Communication({
    required List<CommunicationPatterns> communication,
    final String? header,
  }) : super(patternList: communication, header: header);
}

class Mis extends PatternEntity {
  Mis({
    required List<MisPatterns> mis,
    final String? header,
  }) : super(patternList: mis, header: header);
}

class CommerceAndFinance extends PatternEntity {
  CommerceAndFinance({
    required List<CommerceAndFinancePatterns> commerceAndFinance,
    final String? header,
  }) : super(patternList: commerceAndFinance, header: header);
}

class Social extends PatternEntity {
  Social({
    required List<SocialPatterns> socialPattern,
    final String? header,
  }) : super(patternList: socialPattern, header: header);
}

class Utility extends PatternEntity {
  Utility({
    required List<UtilityPatterns> utilitypatterns,
    final String? header,
  }) : super(patternList: utilitypatterns, header: header);
}

class Content extends PatternEntity {
  Content({
    required List<ContentPatterns> contentPatterns,
    final String? header,
  }) : super(patternList: contentPatterns, header: header);
}

class Actions extends PatternEntity {
  Actions({
    required List<ActionsPatterns> actionpatterns,
    final String? header,
  }) : super(patternList: actionpatterns, header: header);
}
