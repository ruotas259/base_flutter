# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usersGet**](DefaultApi.md#usersget) | **GET** /users | ユーザーのリストを取得
[**usersIdGet**](DefaultApi.md#usersidget) | **GET** /users/{id} | 特定のユーザーを取得
[**usersPost**](DefaultApi.md#userspost) | **POST** /users | 新しいユーザーを作成


# **usersGet**
> List<UsersGet200ResponseInner> usersGet()

ユーザーのリストを取得

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();

try {
    final result = api_instance.usersGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->usersGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<UsersGet200ResponseInner>**](UsersGet200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersIdGet**
> UsersGet200ResponseInner usersIdGet(id)

特定のユーザーを取得

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final id = 56; // int | ユーザーのID

try {
    final result = api_instance.usersIdGet(id);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->usersIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| ユーザーのID | 

### Return type

[**UsersGet200ResponseInner**](UsersGet200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usersPost**
> UsersGet200ResponseInner usersPost(usersPostRequest)

新しいユーザーを作成

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final usersPostRequest = UsersPostRequest(); // UsersPostRequest | 

try {
    final result = api_instance.usersPost(usersPostRequest);
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->usersPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usersPostRequest** | [**UsersPostRequest**](UsersPostRequest.md)|  | 

### Return type

[**UsersGet200ResponseInner**](UsersGet200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

