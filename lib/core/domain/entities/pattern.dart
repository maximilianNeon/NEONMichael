import 'package:neon_web/core/enums.dart';

abstract class Pattern {
  final List<OnboardingPatterns> onboardingPatterns;
  final List<DataPatterns> dataPatterns;
  final List<UserCollectionsPatterns> userCollectionPatterns;
  final List<CommunicationPatterns> communicatinPatterns;
  final List<MisPatterns> misPatterns;
  final List<CommerceAndFinancePatterns> commerceAndFinancePatterns;
  final List<SocialPatterns> socialPatterns;
  final List<UtilityPatterns> utilityPatterns;
  final List<ContentPatterns> contenPatterns;
  final List<ActionsPatterns> actionPatterns;

  Pattern(
      {required this.onboardingPatterns,
      required this.dataPatterns,
      required this.userCollectionPatterns,
      required this.communicatinPatterns,
      required this.misPatterns,
      required this.commerceAndFinancePatterns,
      required this.socialPatterns,
      required this.utilityPatterns,
      required this.actionPatterns,
      required this.contenPatterns});
}
