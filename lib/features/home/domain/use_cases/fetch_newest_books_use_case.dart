import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/use_cases/use_case.dart';

import 'package:dartz/dartz.dart';

import '../entities/book_entity.dart';
import '../repositories/home_repo.dart';



class FetchNewestBooksUseCase extends UseCase<List<BookEntity>, NoParam> {
  final HomeRepo homeRepo;

  FetchNewestBooksUseCase(this.homeRepo);


  @override
  Future<Either<Failure, List<BookEntity>>> call([NoParam? param]) async{
    return await homeRepo.fetchNewestBooks();
  }
}

// https://www.postman.com/restless-space-875499/workspace/students/collection/14058212-d3c30656-4efa-4166-8405-86655985d94d?action=share&creator=14058212
