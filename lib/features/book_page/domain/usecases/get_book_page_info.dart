import 'package:dartz/dartz.dart';
import 'package:skroll/core/core.dart';
import 'package:skroll/features/book_page/domain/domain.dart';
import 'package:meta/meta.dart';
import 'package:skroll/features/book_page/domain/entities/book_page.dart';

class GetBookPageInfo {
  final BookPageRepository repository;

  GetBookPageInfo(this.repository);

  Future<Either<Failure, BookPage>> execute({
    @required String number}) async {
    return await repository.getBookPageInfo(number);
  }

}