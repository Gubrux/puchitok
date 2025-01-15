import 'package:flutter/material.dart';
import 'package:puchitok/domain/entities/video_post.dart';
import 'package:puchitok/infrastructure/models/local_video_model.dart';
import 'package:puchitok/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier {
// todo: Repository, DataSource

//
  bool initialLoading = true;
  List<VideoPost> videos = [];
//
  Future<void> loadNextPage() async {
//
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toVideoPostEntity())
        .toList();

//
    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
