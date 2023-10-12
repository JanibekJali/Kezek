
import 'dart:developer';

import 'package:flutter/material.dart';

import 'source_model.dart';

class Article {
  Source? source;
  String? author;
  String? title;
  String? description;
  String? url;
  AssetImage?urlToImage;
  DateTime?publishedAt;
  String?content;
  
 

  Article(
      {this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] ,
      publishedAt: json['publishedAt'] ,
      content: json['content'] as String,
    );
  }
}

