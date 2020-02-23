import 'package:my_app/models/tweet.dart';
import 'package:my_app/services/api.dart';

class TweetListBloc {
  Stream<List<Tweet>> get getTweetList async* {
    yield await APIService.getTweetList();
  }
}
