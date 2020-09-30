
import 'package:skroll/features/book/book.dart';
import 'dart:core';
import 'package:dartz/dartz.dart';
import 'package:skroll/core/core.dart';


class GetBookInfo {
  final BookRepository repository;

  GetBookInfo(this.repository);

  Future<Either<Failure, Book>> execute() async {
    return await repository.getBookInfo();
  }
}