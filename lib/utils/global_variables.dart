import 'package:flutter/material.dart';
import 'package:instagram_flutter_clone/pages/add_post_page.dart';
import 'package:instagram_flutter_clone/pages/feed_page.dart';
import 'package:instagram_flutter_clone/pages/search_page.dart';

const webScreenSize = 600;

const homeScreenItems = [
  FeedPage(),
  SearchPage(),
  AddPostPage(),
  Text('notification'),
  Text('profile'),
];