import 'package:skroll/core/usecases/usecase.dart';
import 'package:skroll/features/book/book.dart';
import 'dart:core';
import 'package:dartz/dartz.dart';
import 'package:skroll/core/core.dart';


class GetBookInfo implements UseCase<Book, NoParams>{
  final BookRepository repository;

  GetBookInfo(this.repository);

  @override
  Future<Either<Failure, Book>> call(NoParams params) async {
    return await repository.getBookInfo();
  }
}