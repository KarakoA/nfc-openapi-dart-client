import 'package:openapi/api.dart';
import 'package:test/test.dart';


/// tests for MachineApi
void main() {
  var instance = MachineApi();

  group('tests for MachineApi', () {
    // Adds a new machine
    //
    // Creates a new machine
    //
    //Future addMachines(Machine machine) async 
    test('test addMachines', () async {
      // TODO
    });

    // Deletes a machine
    //
    // Removes the machine with matching ID.
    //
    //Future deleteMachine(String apiKey, String machineId) async 
    test('test deleteMachine', () async {
      // TODO
    });

    // Find machine by ID
    //
    // Returns a single machine.
    //
    //Future<Machine> getMachineById(String machineId) async 
    test('test getMachineById', () async {
      // TODO
    });

    // Lists all available machines
    //
    // Lists all available machines. This includes all, that are neither on hold, nor occupied. 
    //
    //Future<List<Machine>> listAvailableMachines() async 
    test('test listAvailableMachines', () async {
      // TODO
    });

    // Lists all machines
    //
    // Lists all machines.
    //
    //Future<List<Machine>> listMachines() async 
    test('test listMachines', () async {
      // TODO
    });

    // Holds the machine
    //
    // Holds the machine for the given user for 3 minutes.
    //
    //Future machineHold(String machineId, String userId, DateTime timestamp) async 
    test('test machineHold', () async {
      // TODO
    });

    // Pay for the given machine
    //
    // Pays for the given machine. In order to be able to pay for a machine, the user must be holding the machine in question. 
    //
    //Future machinePay(String machineId, String userId) async 
    test('test machinePay', () async {
      // TODO
    });

  });
}
