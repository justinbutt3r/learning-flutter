import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class RulesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextStyle _bodyStyle = Theme.of(context).textTheme.body1;
    final TextStyle _headings = _bodyStyle.copyWith(
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Rules'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Text('Two Main Rules', style: _headings),
          Divider(),
          Text('1. Code minimum an hour every day for the next 100 days.'),
          Text(
              '2. Tweet your progress every day with the #100DaysOfCode hashtag.'),
          Divider(
            thickness: 0,
          ),
          RichText(
              text: _LinkTextSpan(
                  style: _bodyStyle.copyWith(
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).accentColor),
                  text: 'Learn more about the rules',
                  url: 'https://www.100daysofcode.com/rules')),
          Text(""),
          Text(
            "Publicly commit to the challenge",
            style: _headings,
          ),
          Divider(),
          Text(
              'If you made the decision to commit to the challenge, Click here to tweet it to the world, making yourself accountable and taking your resolve to the next level!'),
          Divider(
            thickness: 0,
          ),
          RichText(
              text: _LinkTextSpan(
                  style: _bodyStyle.copyWith(
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).accentColor),
                  text: 'Tweet to commit to the challenge!',
                  url:
                      'https://twitter.com/intent/tweet?text=I%27m%20publicly%20committing%20to%20the%20100DaysOfCode%20Challenge%20starting%20today!%20Learn%20More%20and%20Join%20me!&url=https://100DaysOfCode.com&hashtags=100DaysOfCode')),
          Text(""),
          Text(
            "The why",
            style: _headings,
          ),
          Divider(),
          RichText(
              text: _LinkTextSpan(
                  style: _bodyStyle.copyWith(
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).accentColor),
                  text: 'See video here',
                  url: 'https://youtu.be/6y5P7O7YlBU')),
          Text(""),
          Text(
            "Next Steps",
            style: _headings,
          ),
          Divider(),
          Text(
              'If you’ve decided to join, here are the steps you need to go through:\n'),
          RichText(
              text: _LinkTextSpan(
                  style: _bodyStyle.copyWith(
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).accentColor),
                  text: 'Tweet to commit to the challenge!',
                  url:
                      'https://twitter.com/intent/tweet?text=I%27m%20publicly%20committing%20to%20the%20100DaysOfCode%20Challenge%20starting%20today!%20Learn%20More%20and%20Join%20me!&url=https://100DaysOfCode.com&hashtags=100DaysOfCode')),
          RichText(
            text: TextSpan(children: [
              TextSpan(text: 'Read the original article: ', style: _bodyStyle),
              _LinkTextSpan(
                  style: _bodyStyle.copyWith(
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).accentColor),
                  text: 'Join the #100DaysOfCode',
                  url:
                      'https://medium.freecodecamp.com/join-the-100daysofcode-556ddb4579e4')
            ]),
          ),
          Text(
              'Formulate what you want to work on during the challenge. It might be - learning a framework, or starting a journey of learning to code, or improving your skill level with a particular technology or a programming language. Don’t spend too much time planning, but having a plan like this will help you on your path.'),
          Text(
              'From today on, for the next 100 days, tweet your progress every day using the #100DaysOfCode hashtag.'),
          Text(""),
          Text(
            'Steps to increase the likelihood of success',
            style: _headings,
          ),
          Divider(),
          RichText(
            text: TextSpan(children: [
              TextSpan(text: 'Check out other ', style: _bodyStyle),
              _LinkTextSpan(
                  style: _bodyStyle.copyWith(
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).accentColor),
                  text: 'resources',
                  url: 'https://www.100daysofcode.com/resources')
            ]),
          ),
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: '(Optional, but highly recommended) Fork ',
                  style: _bodyStyle),
              _LinkTextSpan(
                  style: _bodyStyle.copyWith(
                      decoration: TextDecoration.underline,
                      color: Theme.of(context).accentColor),
                  text: 'this Github repo ',
                  url: 'https://www.100daysofcode.com/resources'),
              TextSpan(
                  text:
                      'and commit to the Log daily. Follow the instructions in the repo.',
                  style: _bodyStyle)
            ]),
          ),
          Text(
              'Follow 100DaysOfCode Twitter Bot that retweets all the tweets that contain the #100DaysOfCode hashtag. It’s a great way to keep yourself motivated and to participate in the community. Thanks @amanhimself for creating it!'),
          Text(
              'Important: Encourage others who are doing the same challenge on Twitter or elsewhere - by giving them props when they are posting updates on their progress, supporting them when things get difficult. Thus we will grow a community that is helpful and effective, which will lead to a higher success rate for each person involved. It’s also more likely that you will stick to your own commitment, given that you will get acquainted with a couple people (probably more :) ) right away.'),
          Text(
              'If you find a great, helpful resource that others would benefit from, either submit a Pull Request to add it to the repo, or just tweet at me (see info below)'),
        ],
      ),
    );
  }
}

class _LinkTextSpan extends TextSpan {
  _LinkTextSpan({TextStyle style, String url, String text})
      : super(
            style: style,
            text: text ?? url,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                launch(url, forceSafariVC: false);
              });
}
