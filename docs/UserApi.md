# openapi.api.UserApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://virtserver.swaggerhub.com/nfcproject/LaundryRoom/1.0.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUsers**](UserApi.md#addUsers) | **POST** /user | Adds a new user
[**deleteUser**](UserApi.md#deleteUser) | **DELETE** /user/{userId} | Deletes a user
[**getUserById**](UserApi.md#getUserById) | **GET** /user/{userId} | Find user by ID
[**listUsers**](UserApi.md#listUsers) | **GET** /user | Lists all users
[**userBalance**](UserApi.md#userBalance) | **GET** /user/{userId}/balance | Check the user&#39;s balance
[**userDeduct**](UserApi.md#userDeduct) | **POST** /user/{userId}/deduct | Charges the user&#39;s account
[**userRecharge**](UserApi.md#userRecharge) | **POST** /user/{userId}/recharge | Recharges the user&#39;s account


# **addUsers**
> addUsers(user)

Adds a new user

Creates a new user.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = UserApi();
var user = User(); // User | User object, that needs to be added.

try { 
    api_instance.addUsers(user);
} catch (e) {
    print("Exception when calling UserApi->addUsers: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**User**](User.md)| User object, that needs to be added. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUser**
> deleteUser(apiKey, userId)

Deletes a user

Removes the user with matching ID.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = UserApi();
var apiKey = apiKey_example; // String | 
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | User ID to delete

try { 
    api_instance.deleteUser(apiKey, userId);
} catch (e) {
    print("Exception when calling UserApi->deleteUser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiKey** | **String**|  | [default to null]
 **userId** | [**String**](.md)| User ID to delete | [default to null]

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserById**
> User getUserById(userId)

Find user by ID

Returns a single user.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = UserApi();
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of user to return

try { 
    var result = api_instance.getUserById(userId);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->getUserById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**String**](.md)| ID of user to return | [default to null]

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUsers**
> List<User> listUsers()

Lists all users

Lists all registered users.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = UserApi();

try { 
    var result = api_instance.listUsers();
    print(result);
} catch (e) {
    print("Exception when calling UserApi->listUsers: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<User>**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userBalance**
> InlineResponse200 userBalance(userId)

Check the user's balance

Returns the balance of the given user.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = UserApi();
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of user, whose balance to return

try { 
    var result = api_instance.userBalance(userId);
    print(result);
} catch (e) {
    print("Exception when calling UserApi->userBalance: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**String**](.md)| ID of user, whose balance to return | [default to null]

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDeduct**
> userDeduct(userId, amount)

Charges the user's account

Deducts the given amount from the user's account.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = UserApi();
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of user to update
var amount = 1.2; // double | Amount to charge

try { 
    api_instance.userDeduct(userId, amount);
} catch (e) {
    print("Exception when calling UserApi->userDeduct: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**String**](.md)| ID of user to update | [default to null]
 **amount** | **double**| Amount to charge | [default to null]

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userRecharge**
> userRecharge(userId, amount)

Recharges the user's account

Adds balance to the user's account.

### Example 
```dart
import 'package:openapi/api.dart';
// TODO Configure API key authorization: api_key
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('api_key').apiKeyPrefix = 'Bearer';

var api_instance = UserApi();
var userId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | ID of user to update
var amount = 1.2; // double | Amount to recharge

try { 
    api_instance.userRecharge(userId, amount);
} catch (e) {
    print("Exception when calling UserApi->userRecharge: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | [**String**](.md)| ID of user to update | [default to null]
 **amount** | **double**| Amount to recharge | [default to null]

### Return type

void (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

