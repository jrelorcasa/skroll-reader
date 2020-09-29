import 'package:dartz/dartz.dart';
import 'package:skroll/core/core.dart';
import 'package:skroll/features/book_page/domain/entities/book_page.dart';

abstract class BookPageRepository {
  Future<Either<Failure, BookPage>> getBookPageInfo(String pageNumber);
}
