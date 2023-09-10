import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:grocery_store/features/posts/models/post_data_ui_model.dart';

class PostsRepo {
// return

  static Future<List<PostDataUiModel>> fetchPosts() async {
    //creates empty list for posts
    List<PostDataUiModel> posts = [];
    try {
      var client = http.Client();
      var response = await client.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
      );
      List result = jsonDecode(response.body);
      //reads post model
      for (var i = 0; i < result.length; i++) {
        PostDataUiModel post =
            PostDataUiModel.fromJson(result[i] as Map<String, dynamic>);
        posts.add(post);
      }
      return posts;
      //Emiting post state after successul fetch results
    } catch (e) {
      return [];
    }
  }
}
