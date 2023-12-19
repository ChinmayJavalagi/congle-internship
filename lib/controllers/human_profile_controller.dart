import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/human_profile.dart';

class HumanProfileController extends GetxController {
  final selectedProfile = Rx<HumanProfile>(HumanProfile());

  void fetchProfiles() async {
    final profiles = (await getHumanProfiles())!;
    selectedProfile.value = profiles[0];
  }

  void selectProfile(HumanProfile p) {
    selectedProfile.value = p;
  }

  getHumanProfiles() {}
}