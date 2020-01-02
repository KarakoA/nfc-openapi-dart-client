import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for UserApi
void main() {
  var instance = UserApi();

  group('tests for UserApi', () {
    // Adds a new user
    //
    // Creates a new user.
    //
    //Future addUsers(User user) async 
    test('test addUsers', () async {
      // TODO
    });

    // Deletes a user
    //
    // Removes the user with matching ID.
    //
    //Future deleteUser(String apiKey, String userId) async 
    test('test deleteUser', () async {
      // TODO
    });

    // Find user by ID
    //
    // Returns a single user.
    //
    //Future<User> getUserById(String userId) async 
    test('test getUserById', () async {
      // TODO
    });

    // Lists all users
    //
    // Lists all registered users.
    //
    //Future<List<User>> listUsers() async 
    test('test listUsers', () async {
      // TODO
    });

    // Check the user's balance
    //
    // Returns the balance of the given user.
    //
    //Future<InlineResponse200> userBalance(String userId) async 
    test('test userBalance', () async {
      // TODO
    });

    // Charges the user's account
    //
    // Deducts the given amount from the user's account.
    //
    //Future userDeduct(String userId, double amount) async 
    test('test userDeduct', () async {
      // TODO
    });

    // Recharges the user's account
    //
    // Adds balance to the user's account.
    //
    //Future userRecharge(String userId, double amount) async 
    test('test userRecharge', () async {
      // TODO
    });

  });
}
