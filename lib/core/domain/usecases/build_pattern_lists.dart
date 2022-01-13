import 'package:enum_to_string/enum_to_string.dart';
import 'package:neon_web/core/enum/enums.dart';

 mixin BuildPatternLists {
   static final onboarding = List<Patterns>.from(Patterns.values.where((element) => element.header == PatternHeaders.OnboardingPatterns));
   static final data = List<Patterns>.from(Patterns.values.where((element) => element.header == PatternHeaders.DataPatterns));
   static final userCollection =
       List<Patterns>.from(Patterns.values.where((element) => element.header == PatternHeaders.UserCollectionsPatterns));
   static final communication =
       List<Patterns>.from(Patterns.values.where((element) => element.header == PatternHeaders.CommunicationPatterns));
   static final mis = List<Patterns>.from(Patterns.values.where((element) => element.header == PatternHeaders.MisPatterns));
   static final commerceAndFinance =
       List<Patterns>.from(Patterns.values.where((element) => element.header == PatternHeaders.CommerceAndFinancePatterns));
   static final social = List<Patterns>.from(Patterns.values.where((element) => element.header == PatternHeaders.SocialPatterns));
   static final utility = List<Patterns>.from(Patterns.values.where((element) => element.header == PatternHeaders.UtilityPatterns));
   static final content = List<Patterns>.from(Patterns.values.where((element) => element.header == PatternHeaders.ContentPatterns));
   static final actions = List<Patterns>.from(Patterns.values.where((element) => element.header == PatternHeaders.ActionsPatterns));
   static final headlineList = PatternHeaders.values;




   static final List<List<Patterns>> globalItemList = [
     onboarding,
     data,
     userCollection,
     communication,
     mis,
     commerceAndFinance,
     social,
     utility,
     content,
     actions
   ];
 }



