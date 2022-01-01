//
//  CoreBluetooth.swift
//  Celebration Light
//
//  Created by Rahul Bathija on 2022-01-01.
//

//import Foundation
//import Combine
//import CoreBluetooth
//
//
//final class BluetoothManager: NSObject {
//
//    private var centralManager: CBCentralManager!
//
//    var stateSubject: PassthroughSubject<CBManagerState, Never> = .init()
//    var peripheralSubject: PassthroughSubject<CBPeripheral, Never> = .init()
//
//    func start() {
//        centralManager = .init(delegate: self, queue: .main)
//    }
//    func connect(_ peripheral: CBPeripheral) {
//        centralManager.stopScan()
//        peripheral.delegate = self
//        centralManager.connect(peripheral)
//    }
//}
//
//extension BluetoothManager: CBCentralManagerDelegate {
//
//    func centralManagerDidUpdateState(_ central: CBCentralManager) {
//        stateSubject.send(central.state)
//    }
//
//    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
//        peripheralSubject.send(peripheral)
//    }
//}
//
//manager.servicesSubject
//    .map { $0.filter { Constants.serviceUUIDs.contains($0.uuid) } }
//   .sink { [weak self] services in
//        services.forEach { service in
//       self?.peripheral.discoverCharacteristics(nil, for: service)
//        }
//    }
//    .store(in: &cancellables)
//
//
//enum Constants {
//    static let readServiceUUID: CBUUID = .init(string: "FFD0")
//    static let writeServiceUUID: CBUUID = .init(string: "FFD5")
//    static let serviceUUIDs: [CBUUID] = [readServiceUUID, writeServiceUUID]
//    static let readCharacteristicUUID: CBUUID = .init(string: "FFD4")
//    static let writeCharacteristicUUID: CBUUID = .init(string: "FFD9")
//}
//// This logic will need to be updated based on the specific bluetooth protocol thta's in the devince itself
//
//
