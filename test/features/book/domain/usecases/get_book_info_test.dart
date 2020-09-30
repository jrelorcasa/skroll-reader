import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:skroll/core/usecases/usecase.dart';
import 'package:skroll/features/book/book.dart';
import 'package:skroll/features/book/domain/usecases/get_book_info.dart';
import 'package:skroll/features/book_page/domain/domain.dart';
import 'package:skroll/features/book_page/domain/entities/book_page.dart';
import 'package:flutter_test/flutter_test.dart';

class MockBookRepository extends Mock implements BookRepository{}

void main() {
  MockBookRepository mockBookRepository;
  GetBookInfo usecase;

  setUp((){
    mockBookRepository = MockBookRepository();
    usecase = GetBookInfo(mockBookRepository);
  });
  
  final tBook = Book(title: 'Title', author: 'Author', content: 'Content');

  test('Get book information', () async {
    // arrange
    when(mockBookRepository.getBookInfo()).thenAnswer((_) async => Right(tBook));
    // act
    final result = await usecase(NoParams());
    // assert
    expect(result, Right(tBook));
    verify(mockBookRepository.getBookInfo());
    verifyNoMoreInteractions(mockBookRepository);
  });
}