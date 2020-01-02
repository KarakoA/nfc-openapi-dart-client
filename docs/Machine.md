# openapi.model.Machine

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | [default to null]
**name** | **int** | The name of the machine (number written on it&#39;s front side) | [optional] [default to null]
**houseNumber** | **int** | The house, in which the machine is located | [optional] [default to null]
**cost** | **double** | The cost of one usage of the machine | [default to null]
**type** | **String** | The type of the machine | [default to null]
**programDurationInMinutes** | **int** | The average duration of a program of the machine | [default to null]
**lastStartTime** | [**DateTime**](DateTime.md) | The last time, thatthe machine was started | [optional] [default to null]
**lastHoldingStartTime** | [**DateTime**](DateTime.md) | The last time, that someone held this machine | [optional] [default to null]
**lastHoldingUserId** | **String** | The last user, that held this machine | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


