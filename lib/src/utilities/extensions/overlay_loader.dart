import 'package:get/get.dart';
import 'package:jobpilot/src/global/widgets/loading_indicator.dart';

extension LoadingExtension<T> on Future<T> Function() {
  Future<T> Function() get withOverlay => () async {
        return Get.showOverlay<T>(
          asyncFunction: this,
          loadingWidget: const OverlayLoadingIndicator(),
        );
      };
}
