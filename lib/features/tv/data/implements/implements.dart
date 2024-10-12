
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class TvRepositoryImp implements TvRepository{

        final TvRemoteDataSource remoteDataSource;
        TvRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    