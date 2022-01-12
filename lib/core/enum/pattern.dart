
import 'package:json_annotation/json_annotation.dart';


enum OnboardingPatterns {
  LaunchScreen,
  WelcomeAndGetStarted,
  Walkthrough,
  SignUp,
  Login,
  Verification,
  AccountSetup,
  GuidedTourAndTutorial
}

enum DataPatterns { Charts, Progress, DashboardAndStats, SizeGiude }

enum UserCollectionsPatterns {
  BookmarksAndCollections,
  DownloadsAndAvailable,
  Offline,
  Playlists,
  Trash
}

enum CommunicationPatterns {
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
  SuggestionAndSimilarItems
}

enum MisPatterns { Confetti, DarkMode, Misc }

enum CommerceAndFinancePatterns {
  Shop,
  SubscriptionAndPremium,
  CartsAndBars,
  CheckoutAndOrderReview,
  PaymentMethod,
  OrderHistory,
  Pricing,
  WalletAndBallance,
  PromotionsAndRewards,
  Ads
}

enum SocialPatterns {
  AchievementsAndAwards,
  ActivityAndNotification,
  AddAndInviteFriends,
  Comments,
  SocialFeed,
  FollowersAndFollowing,
  Leaderboard,
  ProfileAndAccount,
  ReviewsAndRating,
  GroupsAndCommunity
}

enum UtilityPatterns {
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
  Call
}

enum ContentPatterns {
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
  OtherContent
}

@JsonEnum()
enum ActionsPatterns {
   
   AddAndCreate,
 // @JsonValue("Edit") Edit,
 // @JsonValue("Delete") Delete,
 // @JsonValue("UploadAndDownload") UploadAndDownload,
 // @JsonValue("Select") Select,
 // @JsonValue("Move") Move,
 // @JsonValue("Recoder") Reorder,
 // @JsonValue("DrawAndAnnotate") DrawAndAnnotate,
 // @JsonValue("Save") Save,
 // @JsonValue("Cancel") Cancel,
 // @JsonValue("SetSchedule") SetSchedule,
 // @JsonValue("LikeAndUpvote") LikeAndUpvote,
 // @JsonValue("FollowAndSubscribe") FollowAndSubscribe,
 // @JsonValue("Share") Share,
 // @JsonValue("FlagAndReport") FlagAndReport,
 // @JsonValue("BanAndBlock") BanAndBlock,
 // @JsonValue("FilterAndSort") FilterAndSort,
 // @JsonValue("Search") Search,
 // @JsonValue("TransferAndSendMoney") TransferAndSendMoney,
 // @JsonValue("OtherAction") OtherAction
}