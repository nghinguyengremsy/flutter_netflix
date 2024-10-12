
    import '../sources/sources.dart';
    import '../../domain/repositories/repositories.dart';
    
    class MovieRepositoryImp implements MovieRepository{

        final MovieRemoteDataSource remoteDataSource;
        MovieRepositoryImp({required this.remoteDataSource});
      
        // ... example ...
        //
        // Future<User> getUser(String userId) async {
        //     return remoteDataSource.getUser(userId);
        //   }
        // ...
    }
    