# openapi.api.MachineApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://virtserver.swaggerhub.com/nfcproject/LaundryRoom/1.0.1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMachines**](MachineApi.md#addMachines) | **POST** /machine | Adds a new machine
[**deleteMachine**](MachineApi.md#deleteMachine) | **DELETE** /machine/{machineId} | Deletes a machine
[**getMachineById**](MachineApi.md#getMachineById) | **GET** /machine/{machineId} | Find machine by ID
[**listAvailableMachines**](MachineApi.md#listAvailableMachines) | **GET** /machine/available | Lists all available machines
[**listMachines**](MachineApi.md#listMachines) | **GET** /machine | Lists all machines
[**machineHold**](MachineApi.md#machineHold) | **POST** /machine/{machineId}/hold | Holds the machine
[**machinePay**](MachineApi.md#machinePay) | **POST** /machine/{machineId}/pay | Pay for the given machine


# **addMachines**
> addMachines(machine)

Adds a new machine

Creates a new machine

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = MachineApi();
var machine = Machine(); // Machine | Machine object that needs to be added

try { 
    api_instance.addMachines(machine);
} catch (e) {
    print("Exception when calling MachineApi->addMachines: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **machine** | [**Machine**](Machine.md)| Machine object that needs to be added | 

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMachine**
> deleteMachine(apiKey, machineId)

Deletes a machine

Removes the machine with matching ID.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = MachineApi();
var apiKey = apiKey_example; // String | 
var machineId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Machine ID to delete

try { 
    api_instance.deleteMachine(apiKey, machineId);
} catch (e) {
    print("Exception when calling MachineApi->deleteMachine: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiKey** | **String**|  | [default to null]
 **machineId** | [**String**](.md)| Machine ID to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMachineById**
> Machine getMachineById(machineId)

Find machine by ID

Returns a single machine.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = MachineApi();
var machineId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of machine to return

try { 
    var result = api_instance.getMachineById(machineId);
    print(result);
} catch (e) {
    print("Exception when calling MachineApi->getMachineById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **machineId** | [**String**](.md)| ID of machine to return | [default to null]

### Return type

[**Machine**](Machine.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listAvailableMachines**
> List<Machine> listAvailableMachines()

Lists all available machines

Lists all available machines. This includes all, that are neither on hold, nor occupied. 

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = MachineApi();

try { 
    var result = api_instance.listAvailableMachines();
    print(result);
} catch (e) {
    print("Exception when calling MachineApi->listAvailableMachines: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Machine>**](Machine.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listMachines**
> List<Machine> listMachines()

Lists all machines

Lists all machines.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = MachineApi();

try { 
    var result = api_instance.listMachines();
    print(result);
} catch (e) {
    print("Exception when calling MachineApi->listMachines: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<Machine>**](Machine.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **machineHold**
> machineHold(machineId, userId, timestamp)

Holds the machine

Holds the machine for the given user for 10 minutes.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = MachineApi();
var machineId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of machine to hold
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the user, for who to hold the machine
var timestamp = 2013-10-20T19:20:30+01:00; // DateTime | Time of sending the request

try { 
    api_instance.machineHold(machineId, userId, timestamp);
} catch (e) {
    print("Exception when calling MachineApi->machineHold: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **machineId** | [**String**](.md)| ID of machine to hold | [default to null]
 **userId** | [**String**](.md)| ID of the user, for who to hold the machine | [default to null]
 **timestamp** | **DateTime**| Time of sending the request | [default to null]

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **machinePay**
> machinePay(machineId, cardId)

Pay for the given machine

Pays for the given machine. In order to be able to pay for a machine, the user must be holding the machine in question. 

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = MachineApi();
var machineId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the machine to pay
var cardId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of the user's card

try { 
    api_instance.machinePay(machineId, cardId);
} catch (e) {
    print("Exception when calling MachineApi->machinePay: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **machineId** | [**String**](.md)| ID of the machine to pay | [default to null]
 **cardId** | [**String**](.md)| ID of the user&#39;s card | [default to null]

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

