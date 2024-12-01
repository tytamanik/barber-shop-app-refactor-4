import '../../domain/entities/barber_entity.dart';
import '../../domain/repositories/barber_repository.dart';
import '../sources/barber_remote_data_source.dart';

class BarberRepositoryImpl implements BarberRepository {
  final BarberRemoteDataSource remoteDataSource;

  BarberRepositoryImpl(this.remoteDataSource);

  @override
  Future<BarberEntity> getBarberData() async {
    return await remoteDataSource.fetchBarberData();
  }
}
