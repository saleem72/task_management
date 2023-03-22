//

abstract class ApiHelper {
  Future get({
    required String url,
    required String endPoint,
    Map<String, String> headers,
    Map<String, String> params,
  });
}
