import '../entities/barber_entity.dart';

abstract class BarberRepository {
  Future<BarberEntity> getBarberData();
}
