import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../models/club_profile.dart';

class ClubProfileController extends GetxController {
  final selectedClub = Rx<ClubProfile>(ClubProfile());

  void fetchClubs() async {
    final clubs = await getClubProfiles();
    if (clubs != null) {
      selectedClub.value = clubs[0];
    } else {
    }
  }

  void selectClub(ClubProfile c) {
    selectedClub.value = c;
  }

  getClubProfiles() {}
}