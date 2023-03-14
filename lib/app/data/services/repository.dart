
import '../apis/api_endpoint.dart';
import '../providers/api_provider.dart';
import 'api_service.dart';
import 'prefrences.dart';

class Repository extends ApiProviders {
  var deviceId = Pref.readData(key: Pref.DEVICE_UNIQUE);

  ///-------------------------Announcement Api---------------------///

  // Future<dynamic> requestAnnouncement({required String page}) async =>
  //     await tokenBaseApi(
  //             endPoint: AppUrl.ANNOUNCEMENT_API,
  //             method: Method.GET,
  //             map: {'page': page, 'is_active': "true", 'device_id': deviceId})
  //         .then((value) => value);

  // ///-------------------------User Api-------------------------///
  // Future<dynamic> fetchLogin({required Map<String, dynamic> map}) async =>
  //     await commonApiCall(
  //             endPoint: AppUrl.LOGIN_API, method: Method.POST, map: map)
  //         .then((value) => value);
}
