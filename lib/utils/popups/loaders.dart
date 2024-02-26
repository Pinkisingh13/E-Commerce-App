import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/utils/constants/colors.dart';

class TLoaders {
  static errorSnackbar({required title, message = ''}) =>
      Get.snackbar(title, message,
          isDismissible: true,
          shouldIconPulse: true,
          colorText: TColors.white,
          backgroundColor: Colors.red.shade600,
          snackPosition: SnackPosition.BOTTOM,
          icon: const Icon(
            Iconsax.warning_2,
            color: TColors.white,
          ));

  static successSnackbar({required title, message = '', duration = 3}) =>
      Get.snackbar(title, message,
          isDismissible: true,
          shouldIconPulse: true,
          colorText: TColors.white,
          backgroundColor: TColors.primary,
          snackPosition: SnackPosition.BOTTOM,
          duration: Duration(seconds: duration),
          margin: const EdgeInsets.all(10),
          icon: const Icon(
            Iconsax.check,
            color: TColors.white,
          ));

          
  static warningSnackbar({required title, message = ''}) =>
      Get.snackbar(title, message,
          isDismissible: true,
          shouldIconPulse: true,
          colorText: TColors.white,
          backgroundColor: Colors.orange,
          snackPosition: SnackPosition.BOTTOM,
          duration: const Duration(seconds: 3),
          margin: const EdgeInsets.all(20),
          icon: const Icon(
            Iconsax.warning_2,
            color: TColors.black,
          ));
}
