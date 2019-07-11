import 'homepage.dart';

class UserData {
  List<circularStory> _storyData = [
    circularStory(
        name: 'troyX',
        picture: 'images/profilePicture/flutter_instappl.jpg',
        hasStory: true),
    circularStory(
      name: 'Scott',
      picture: 'images/postPhoto/flutter_insta.jpg',
      hasStory: true,
    ),
    circularStory(
        name: 'elliot34',
        picture: 'images/postPhoto/flutter_instacow.jpg',
        hasStory: true),
    circularStory(
        name: 'tomMY21',
        picture: 'images/profilePicture/flutter_instappl2.jpg',
        hasStory: false),
    circularStory(
        name: 'harry',
        picture: 'images/postPhoto/flutter_starrynight.jpg',
        hasStory: true),
    circularStory(
        name: 'RajJY',
        picture: 'images/postPhoto/flutter_instameditate.jpg',
        hasStory: false),
    circularStory(
        name: 'yicue',
        picture: 'images/images/postPhoto/flutter_starrynight.jpg',
        hasStory: true),
  ];

  List<circularStory> getStoryData() {
    return _storyData;
  }

  List<getPost> getPostData() {
    return _postData;
  }

  List<getPost> _postData = [
    getPost(
        profilePicture: 'images/profilePicture/flutter_instappl.jpg',
        name: 'Sam',
        photo: 'images/postPhoto/flutter_starrynight.jpg',
        caption: 'Back to the night sky!.',
        likes: '435'),
    getPost(
        profilePicture: 'images/profilePicture/flutter_instappl2.jpg',
        name: 'sarah',
        photo: 'images/postPhoto/flutter_insta.jpg',
        caption:
            'Dammmm, I finally got a chance to ride the horse! A horse doesn’t care how much you know until he knows how much you care. Put your hand on your horse and your heart in your hand.',
        likes: '435'),
    getPost(
        profilePicture: 'images/profilePicture/flutter_instappl3.jpg',
        name: 'rajJY',
        photo: 'images/postPhoto/flutter_insta1.jpg',
        caption: 'Spent my lunch hiking... what am I saying?',
        likes: '435'),
    getPost(
        profilePicture: 'images/profilePicture/flutter_instappl4.jpg',
        name: 'scott',
        photo: 'images/postPhoto/flutter_instameditate.jpg',
        caption: 'Meditation in the wild',
        likes: '435'),
    getPost(
        profilePicture: 'images/profilePicture/flutter_instappl5.jpg',
        name: 'Julia',
        photo: 'images/postPhoto/flutter_instacow.jpg',
        caption: 'They call them the happy cow.',
        likes: '435')
  ];
}
