import 'package:equatable/equatable.dart';

import '../shared/constants/app_constants.dart' as constants;

class StoryBook extends Equatable {
  late final int _id;
  final String? title;
  final String? author;
  final String? poster;
  final String? status;
  final String? updatedDate;

  int get id => _id;

  StoryBook({
    required int id,
    this.title,
    this.author,
    this.poster,
    this.status,
    this.updatedDate,
  }) {
    _id = id;
  }

  factory StoryBook.fromJson(Map<String, dynamic> json) {
    assert(json['id']);
    return StoryBook(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      poster: json['poster'],
      status: json['status'],
      updatedDate: json['updatedDate'],
    );
  }

  @override
  List<Object?> get props => [
        _id,
        poster,
        title,
        author,
        status,
        updatedDate,
      ];
}
