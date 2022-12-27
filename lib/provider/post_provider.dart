import 'package:flutter/cupertino.dart';
import 'package:twitter/model/post_model.dart';
import 'package:twitter/network/post_services.dart';

class PostProvider with ChangeNotifier {
  PostProvider() {
    getPosts();
  }
  bool _loading = false;
  bool get loading => _loading;
  List<PostModel> get posts => _posts;

  List<PostModel> _posts = [];
  _setLoading(bool value) {
    _loading = value;
    notifyListeners();
  }

  getPosts() async {
    _setLoading(true);
    _posts = await PostServices.getposts();
    await Future.delayed(const Duration(seconds: 3));
    _setLoading(false);
    notifyListeners();
  }
}
