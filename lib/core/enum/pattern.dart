import 'package:json_annotation/json_annotation.dart';
import 'package:neon_web/core/enum/enums.dart';

@JsonEnum()
enum Patterns {
// enum OnboardingPatterns {
  LaunchScreen,
  WelcomeAndGetStarted,
  Walkthrough,
  SignUp,
  Login,
  Verification,
  AccountSetup,
  GuidedTourAndTutorial,
// }

// enum DataPatterns {
  Charts,
  Progress,
  DashboardAndStats,
  SizeGiude,
  // }

// enum UserCollectionsPatterns {
  BookmarksAndCollections,
  DownloadsAndAvailable,
  Offline,
  Playlists,
  Trash,
// }

// enum CommunicationPatterns {
  About,
  ActionOption,
  AcknowledgementAndSuccess,
  Error,
  Confirmation,
  Permission,
  EmptyState,
  Loading,
  PullToRefresh,
  CoachMarksAndInstruction,
  FeatureInfo,
  SettingsAndPreference,
  HelpAndSupport,
  Feedback,
  PrivacyPolicy,
  TermsAndConditions,
  SuggestionAndSimilarItems,
// }

// enum MisPatterns {
  Confetti,
  DarkMode,
  Misc,
  // }

// enum CommerceAndFinancePatterns {
  Shop,
  SubscriptionAndPremium,
  CartsAndBars,
  CheckoutAndOrderReview,
  PaymentMethod,
  OrderHistory,
  Pricing,
  WalletAndBallance,
  PromotionsAndRewards,
  Ads,
// }

// enum SocialPatterns {
  AchievementsAndAwards,
  ActivityAndNotification,
  AddAndInviteFriends,
  Comments,
  SocialFeed,
  FollowersAndFollowing,
  Leaderboard,
  ProfileAndAccount,
  ReviewsAndRating,
  GroupsAndCommunity,
// }

// enum UtilityPatterns {
  TimeLineAndHistory,
  Calendar,
  DateAndTime,
  TimeAndClocl,
  Reminder,
  LocationAndAddress,
  Map,
  Browser,
  ChatBots,
  AudioPlayer,
  VideoPlayer,
  AudioAndVideoRecorder,
  MediaEditor,
  CameraAndScanner,
  FiltersAndStickers,
  Call,
// }

// enum ContentPatterns {
  Home,
  DiscoverAndExplore,
  NewsFeed,
  ItemList,
  EmailsAndMessages,
  Article,
  TVShowsAndMovie,
  PodcastAndSong,
  RecipeAndMenu,
  Note,
  GoalAndTask,
  Post,
  Stories,
  Chat,
  Game,
  Class,
  Event,
  Quiz,
  Product,
  AugementedReality,
  OtherContent,
// }

// @JsonEnum()
// enum ActionsPatterns {

  AddAndCreate,
  Edit,
  Delete,
  UploadAndDownload,
  Select,
  Move,
  Reorder,
  DrawAndAnnotate,
  Save,
  Cancel,
  SetSchedule,
  LikeAndUpvote,
  FollowAndSubscribe,
  Share,
  FlagAndReport,
  BanAndBlock,
  FilterAndSort,
  Search,
  TransferAndSendMoney,
  OtherAction
}

extension PatternsInfo on Patterns {
  PatternHeaders get header {
    switch (this) {
      case Patterns.LaunchScreen:

      case Patterns.WelcomeAndGetStarted:

      case Patterns.Walkthrough:

      case Patterns.SignUp:

      case Patterns.Login:

      case Patterns.Verification:

      case Patterns.AccountSetup:

      case Patterns.GuidedTourAndTutorial:
        return PatternHeaders.OnboardingPatterns;

      case Patterns.Charts:

      case Patterns.Progress:

      case Patterns.DashboardAndStats:

      case Patterns.SizeGiude:
        return PatternHeaders.DataPatterns;

      case Patterns.BookmarksAndCollections:

      case Patterns.DownloadsAndAvailable:

      case Patterns.Offline:

      case Patterns.Playlists:

      case Patterns.Trash:
        return PatternHeaders.UserCollectionsPatterns;

      case Patterns.About:

      case Patterns.ActionOption:

      case Patterns.AcknowledgementAndSuccess:

      case Patterns.Error:

      case Patterns.Confirmation:

      case Patterns.Permission:

      case Patterns.EmptyState:

      case Patterns.Loading:

      case Patterns.PullToRefresh:

      case Patterns.CoachMarksAndInstruction:

      case Patterns.FeatureInfo:

      case Patterns.SettingsAndPreference:

      case Patterns.HelpAndSupport:

      case Patterns.Feedback:

      case Patterns.PrivacyPolicy:

      case Patterns.TermsAndConditions:

      case Patterns.SuggestionAndSimilarItems:
        return PatternHeaders.CommunicationPatterns;

      case Patterns.Confetti:

      case Patterns.DarkMode:

      case Patterns.Misc:
        return PatternHeaders.MisPatterns;

      case Patterns.Shop:

      case Patterns.SubscriptionAndPremium:

      case Patterns.CartsAndBars:

      case Patterns.CheckoutAndOrderReview:

      case Patterns.PaymentMethod:

      case Patterns.OrderHistory:

      case Patterns.Pricing:

      case Patterns.WalletAndBallance:

      case Patterns.PromotionsAndRewards:

      case Patterns.Ads:
        return PatternHeaders.CommerceAndFinancePatterns;

      case Patterns.AchievementsAndAwards:

      case Patterns.ActivityAndNotification:

      case Patterns.AddAndInviteFriends:

      case Patterns.Comments:

      case Patterns.SocialFeed:

      case Patterns.FollowersAndFollowing:

      case Patterns.Leaderboard:

      case Patterns.ProfileAndAccount:

      case Patterns.ReviewsAndRating:

      case Patterns.GroupsAndCommunity:
        return PatternHeaders.SocialPatterns;

      case Patterns.TimeLineAndHistory:

      case Patterns.Calendar:

      case Patterns.DateAndTime:

      case Patterns.TimeAndClocl:

      case Patterns.Reminder:

      case Patterns.LocationAndAddress:

      case Patterns.Map:

      case Patterns.Browser:

      case Patterns.ChatBots:

      case Patterns.AudioPlayer:

      case Patterns.VideoPlayer:

      case Patterns.AudioAndVideoRecorder:

      case Patterns.MediaEditor:

      case Patterns.CameraAndScanner:

      case Patterns.FiltersAndStickers:

      case Patterns.Call:
        return PatternHeaders.UtilityPatterns;

      case Patterns.Home:

      case Patterns.DiscoverAndExplore:

      case Patterns.NewsFeed:

      case Patterns.ItemList:

      case Patterns.EmailsAndMessages:

      case Patterns.Article:

      case Patterns.TVShowsAndMovie:

      case Patterns.PodcastAndSong:

      case Patterns.RecipeAndMenu:

      case Patterns.Note:

      case Patterns.GoalAndTask:

      case Patterns.Post:

      case Patterns.Stories:

      case Patterns.Chat:

      case Patterns.Game:

      case Patterns.Class:

      case Patterns.Event:

      case Patterns.Quiz:

      case Patterns.Product:

      case Patterns.AugementedReality:

      case Patterns.OtherContent:
        return PatternHeaders.ContentPatterns;

      case Patterns.AddAndCreate:

      case Patterns.Edit:

      case Patterns.Delete:

      case Patterns.UploadAndDownload:

      case Patterns.Select:

      case Patterns.Move:

      case Patterns.Reorder:

      case Patterns.DrawAndAnnotate:

      case Patterns.Save:

      case Patterns.Cancel:

      case Patterns.SetSchedule:

      case Patterns.LikeAndUpvote:

      case Patterns.FollowAndSubscribe:

      case Patterns.Share:

      case Patterns.FlagAndReport:

      case Patterns.BanAndBlock:

      case Patterns.FilterAndSort:

      case Patterns.Search:

      case Patterns.TransferAndSendMoney:

      case Patterns.OtherAction:
        return PatternHeaders.ActionsPatterns;
    }


  }
      
}

