import 'package:youtube_player/models/video_model.dart';

class Channel {
  final String id;
  final String title;
  final String profilePictureUrl;
  final String subuscriberCount;
  final String videoCount;
  final String uploadPlayListId;
  List<Video> videos;

  Channel(
      {this.id,
      this.profilePictureUrl,
      this.subuscriberCount,
      this.title,
      this.uploadPlayListId,
      this.videoCount,
      this.videos});

  factory Channel.fromMap(Map<String, dynamic> map) {
    return Channel(
        id: map['id'],
        title: map['snippet']['title'],
        profilePictureUrl: map['snippet']['thumbnails']['default']['url'],
        subuscriberCount: map['statistics']['subscriberCount'],
        videoCount: map['statistics']['videoCount'],
        uploadPlayListId: map['contentDetails']['relatedPlaylists']['uploads']);
  }
}
