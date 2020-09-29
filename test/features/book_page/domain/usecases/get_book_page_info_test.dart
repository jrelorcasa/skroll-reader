import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:skroll/features/book_page/domain/domain.dart';
import 'package:skroll/features/book_page/domain/entities/book_page.dart';
import 'package:flutter_test/flutter_test.dart';

class MockBookPageRepository extends Mock implements BookPageRepository {}

void main() {
  MockBookPageRepository mockBookPageRepository;
  GetBookPageInfo usecase;

  setUp(() {
    mockBookPageRepository = MockBookPageRepository();
    usecase = GetBookPageInfo(mockBookPageRepository);

  });

  final tNumber = "1";
  final tBookPage = BookPage(pageContent: 'test');

  test(
    'should get book page information',
        () async {
      // arrange
      when(mockBookPageRepository.getBookPageInfo(any))
          .thenAnswer((_) async =>  Right(tBookPage));
      // act
      final result = await usecase.execute(number: tNumber);

      // assert
      expect(result, Right(tBookPage));
      verify(mockBookPageRepository.getBookPageInfo(tNumber));
      verifyNoMoreInteractions(mockBookPageRepository);
    },
  );
}