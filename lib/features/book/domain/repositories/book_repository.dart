import 'package:dartz/dartz.dart';
import 'package:skroll/core/core.dart';
import 'package:skroll/features/book/book.dart';


abstract class BookRepository {
  Future<Either<Failure, Book>> getBookInfo();
}