enum PatternHeaders {
  OnboardingPatterns,
  DataPatterns,
  UserCollectionsPatterns,
  CommunicationPatterns,
  MisPatterns,
  CommerceAndFinancePatterns,
  SocialPatterns,
  UtilityPatterns,
  ContentPatterns,
  ActionsPatterns
}

//TODO
extension PatternHeadersStrings on PatternHeaders {
  String get headerString {
    switch(this){
      case PatternHeaders.OnboardingPatterns:
      return 'onBoardingPatterns';
      case PatternHeaders.DataPatterns:
       return "dataPatterns";
      case PatternHeaders.UserCollectionsPatterns:
        return 'userCollectionPatterns';
      case PatternHeaders.CommunicationPatterns:
        return 'CommunicationPatterns';
      case PatternHeaders.MisPatterns:
        return 'MisPatterns';
      case PatternHeaders.CommerceAndFinancePatterns:
        return "commerceAndFinancePatterns";
      case PatternHeaders.SocialPatterns:
        return "socialPatterns";
      case PatternHeaders.UtilityPatterns:
        return "utilityPatterns";
      case PatternHeaders.ContentPatterns:
        return "contentPatterns";
      case PatternHeaders.ActionsPatterns:
      return 'onboarding';
        
    }
  }
}