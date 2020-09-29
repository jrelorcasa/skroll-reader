import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class BookPage extends Equatable {
  final String pageContent;

  BookPage({@required this.pageContent});

  @override
  List<Object> get props => [pageContent];
}