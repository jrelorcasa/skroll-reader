import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Book extends Equatable {
  final String title;
  final String author;
  final String content;

  Book({@required this.title, @required this.author, @required this.content});

  @override
  List<Object> get props => [title, author, content];
}