import 'package:e_shop/features/authentication/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update current index when page scroll
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  // Jump to the specific dot selected page
  void onDotNavigationClicked(index) {
    currentPageIndex.value = index;
    pageController.jumpToPage(index);
  }

  // Update current index and jump to next page
  void onNextPageClicked() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update current index and jumps to last page
  void onSkipPageClicked() {
    Get.offAll(() => const LoginScreen());
  }
}
