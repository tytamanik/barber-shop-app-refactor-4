import 'package:get/get.dart';

import '../../domain/entities/barber_entity.dart';
import '../../domain/use_cases/get_barber_data.dart';

class BarberController extends GetxController {
  var isLoading = true.obs;
  var barberData = Rxn<BarberEntity>();

  final GetBarberData getBarberDataUseCase;

  BarberController(this.getBarberDataUseCase);

  @override
  void onInit() {
    super.onInit();
    fetchBarberData();
  }

  void fetchBarberData() async {
    try {
      isLoading(true);
      barberData.value = await getBarberDataUseCase();
    } finally {
      isLoading(false);
    }
  }
}
