part of openapi.api;



class MachineApi {
  final ApiClient apiClient;

  MachineApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Adds a new machine with HTTP info returned
  ///
  /// Creates a new machine
  Future addMachinesWithHttpInfo(Machine machine) async {
    Object postBody = machine;

    // verify required params are set
    if(machine == null) {
     throw ApiException(400, "Missing required param: machine");
    }

    // create path and map variables
    String path = "/machine".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json"];

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

  /// Adds a new machine
  ///
  /// Creates a new machine
  Future addMachines(Machine machine) async {
    Response response = await addMachinesWithHttpInfo(machine);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Deletes a machine with HTTP info returned
  ///
  /// Removes the machine with matching ID.
  Future deleteMachineWithHttpInfo(String apiKey, String machineId) async {
    Object postBody;

    // verify required params are set
    if(apiKey == null) {
     throw ApiException(400, "Missing required param: apiKey");
    }
    if(machineId == null) {
     throw ApiException(400, "Missing required param: machineId");
    }

    // create path and map variables
    String path = "/machine/{machineId}".replaceAll("{format}","json").replaceAll("{" + "machineId" + "}", machineId.toString());

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

  /// Deletes a machine
  ///
  /// Removes the machine with matching ID.
  Future deleteMachine(String apiKey, String machineId) async {
    Response response = await deleteMachineWithHttpInfo(apiKey, machineId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Find machine by ID with HTTP info returned
  ///
  /// Returns a single machine.
  Future<Response> getMachineByIdWithHttpInfo(String machineId) async {
    Object postBody;

    // verify required params are set
    if(machineId == null) {
     throw ApiException(400, "Missing required param: machineId");
    }

    // create path and map variables
    String path = "/machine/{machineId}".replaceAll("{format}","json").replaceAll("{" + "machineId" + "}", machineId.toString());

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

  /// Find machine by ID
  ///
  /// Returns a single machine.
  Future<Machine> getMachineById(String machineId) async {
    Response response = await getMachineByIdWithHttpInfo(machineId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return apiClient.deserialize(_decodeBodyBytes(response), 'Machine') as Machine;
    } else {
      return null;
    }
  }

  /// Lists all available machines with HTTP info returned
  ///
  /// Lists all available machines. This includes all, that are neither on hold, nor occupied. 
  Future<Response> listAvailableMachinesWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/machine/available".replaceAll("{format}","json");

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

  /// Lists all available machines
  ///
  /// Lists all available machines. This includes all, that are neither on hold, nor occupied. 
  Future<List<Machine>> listAvailableMachines() async {
    Response response = await listAvailableMachinesWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Machine>') as List).map((item) => item as Machine).toList();
    } else {
      return null;
    }
  }

  /// Lists all machines with HTTP info returned
  ///
  /// Lists all machines.
  Future<Response> listMachinesWithHttpInfo() async {
    Object postBody;

    // verify required params are set

    // create path and map variables
    String path = "/machine".replaceAll("{format}","json");

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

  /// Lists all machines
  ///
  /// Lists all machines.
  Future<List<Machine>> listMachines() async {
    Response response = await listMachinesWithHttpInfo();
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
      return (apiClient.deserialize(_decodeBodyBytes(response), 'List<Machine>') as List).map((item) => item as Machine).toList();
    } else {
      return null;
    }
  }

  /// Holds the machine with HTTP info returned
  ///
  /// Holds the machine for the given user for 3 minutes.
  Future machineHoldWithHttpInfo(String machineId, String userId, DateTime timestamp) async {
    Object postBody;

    // verify required params are set
    if(machineId == null) {
     throw ApiException(400, "Missing required param: machineId");
    }
    if(userId == null) {
     throw ApiException(400, "Missing required param: userId");
    }
    if(timestamp == null) {
     throw ApiException(400, "Missing required param: timestamp");
    }

    // create path and map variables
    String path = "/machine/{machineId}/hold".replaceAll("{format}","json").replaceAll("{" + "machineId" + "}", machineId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "userId", userId));
      queryParams.addAll(_convertParametersForCollectionFormat("", "timestamp", timestamp));

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

  /// Holds the machine
  ///
  /// Holds the machine for the given user for 3 minutes.
  Future machineHold(String machineId, String userId, DateTime timestamp) async {
    Response response = await machineHoldWithHttpInfo(machineId, userId, timestamp);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

  /// Pay for the given machine with HTTP info returned
  ///
  /// Pays for the given machine. In order to be able to pay for a machine, the user must be holding the machine in question. 
  Future machinePayWithHttpInfo(String machineId, String userId) async {
    Object postBody;

    // verify required params are set
    if(machineId == null) {
     throw ApiException(400, "Missing required param: machineId");
    }
    if(userId == null) {
     throw ApiException(400, "Missing required param: userId");
    }

    // create path and map variables
    String path = "/machine/{machineId}/pay".replaceAll("{format}","json").replaceAll("{" + "machineId" + "}", machineId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "userId", userId));

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
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    return response;
  }

  /// Pay for the given machine
  ///
  /// Pays for the given machine. In order to be able to pay for a machine, the user must be holding the machine in question. 
  Future machinePay(String machineId, String userId) async {
    Response response = await machinePayWithHttpInfo(machineId, userId);
    if(response.statusCode >= 400) {
      throw ApiException(response.statusCode, _decodeBodyBytes(response));
    } else if(response.body != null) {
    } else {
      return;
    }
  }

}
