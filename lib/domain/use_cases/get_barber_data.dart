import '../entities/barber_entity.dart';
import '../repositories/barber_repository.dart';

class GetBarberData {
  final BarberRepository repository;

  GetBarberData(this.repository);

  Future<BarberEntity> call() async {
    return await repository.getBarberData();
  }
}
