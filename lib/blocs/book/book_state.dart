import 'package:equatable/equatable.dart';

abstract class BookState extends Equatable{
  @override
  List<Object> get props => [];
}

class BookUninitialized extends BookState {
  @override
  String toString() => 'BookUninitialized';
}

class BookLoading extends BookState {
  @override
  String toString() => 'BookLoading';
}

class BookLoaded extends BookState {
  BookLoaded(this.content);

  final String content;

  @override
  List<Object> get props => [content];

  @override
  String toString() => 'BookLoaded';
}

class BookError extends BookState {
  @override
  String toString() => 'BookError';
}