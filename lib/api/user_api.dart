part of openapi.api;



class UserApi {
  final ApiClient apiClient;

  UserApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Adds a new user with HTTP info returned
  ///
  /// Creates a new user.
  Future addUsersWithHttpInfo(User user) async {
    Object postBody = user;

    // verify required params are set
    if(user == null) {
     throw ApiException(400, "Missing required param: user");
    }

    // create path and map variables
    String path = "/user".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Adds a new user
  ///
  /// Creates a new user.
  Future addUsers(User user) async {
    Response response = await addUsersWithHttpInfo(user);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Deletes a user with HTTP info returned
  ///
  /// Removes the user with matching ID.
  Future deleteUserWithHttpInfo(String apiKey, String userId) async {
    Object postBody;

    // verify required params are set
    if(apiKey == null) {
     throw ApiException(400, "Missing required param: apiKey");
    }
    if(userId == null) {
     throw ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/user/{userId}".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["api_key"] = apiKey;

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["api_key"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Deletes a user
  ///
  /// Removes the user with matching ID.
  Future deleteUser(String apiKey, String userId) async {
    Response response = await deleteUserWithHttpInfo(apiKey, userId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Find user by ID with HTTP info returned
  ///
  /// Returns a single user.
  Future<Response> getUserByIdWithHttpInfo(String userId) async {
    Object postBody;

    // verify required params are set
    if(userId == null) {
     throw ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/user/{userId}".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["api_key"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Find user by ID
  ///
  /// Returns a single user.
  Future<User> getUserById(String userId) async {
    Response response = await getUserByIdWithHttpInfo(userId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'User') as User;
    } else {
      return null;
    }
  }

  /// Lists all users with HTTP info returned
  ///
  /// Lists all registered users.
  Future<Response> listUsersWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/user".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["api_key"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Lists all users
  ///
  /// Lists all registered users.
  Future<List<User>> listUsers() async {
    Response response = await listUsersWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<User>') as List).map((item) => item as User).toList();
    } else {
      return null;
    }
  }

  /// Check the user&#39;s balance with HTTP info returned
  ///
  /// Returns the balance of the given user.
  Future<Response> userBalanceWithHttpInfo(String userId) async {
    Object postBody;

    // verify required params are set
    if(userId == null) {
     throw ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/user/{userId}/balance".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Check the user&#39;s balance
  ///
  /// Returns the balance of the given user.
  Future<InlineResponse200> userBalance(String userId) async {
    Response response = await userBalanceWithHttpInfo(userId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'InlineResponse200') as InlineResponse200;
    } else {
      return null;
    }
  }

  /// Charges the user&#39;s account with HTTP info returned
  ///
  /// Deducts the given amount from the user&#39;s account.
  Future userDeductWithHttpInfo(String userId, double amount) async {
    Object postBody;

    // verify required params are set
    if(userId == null) {
     throw ApiException(400, "Missing required param: userId");
    }
    if(amount == null) {
     throw ApiException(400, "Missing required param: amount");
    }

    // create path and map variables
    String path = "/user/{userId}/deduct".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "amount", amount));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["api_key"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Charges the user&#39;s account
  ///
  /// Deducts the given amount from the user&#39;s account.
  Future userDeduct(String userId, double amount) async {
    Response response = await userDeductWithHttpInfo(userId, amount);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Recharges the user&#39;s account with HTTP info returned
  ///
  /// Adds balance to the user&#39;s account.
  Future userRechargeWithHttpInfo(String userId, double amount) async {
    Object postBody;

    // verify required params are set
    if(userId == null) {
     throw ApiException(400, "Missing required param: userId");
    }
    if(amount == null) {
     throw ApiException(400, "Missing required param: amount");
    }

    // create path and map variables
    String path = "/user/{userId}/recharge".replaceAll("{format}","json").replaceAll("{" + "userId" + "}", userId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "amount", amount));

    List<String> contentTypes = [];

    String contentType = contentTypes.isNotEmpty ? contentTypes[0] : "application/json";
    List<String> authNames = ["api_key"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Recharges the user&#39;s account
  ///
  /// Adds balance to the user&#39;s account.
  Future userRecharge(String userId, double amount) async {
    Response response = await userRechargeWithHttpInfo(userId, amount);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
