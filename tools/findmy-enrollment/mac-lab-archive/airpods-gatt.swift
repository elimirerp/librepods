import Foundation
import CoreBluetooth

// Inspect only the AirPods peripheral supplied on the command line. No GATT writes.
final class Probe: NSObject, CBCentralManagerDelegate, CBPeripheralDelegate {
    private let target: UUID
    private var central: CBCentralManager!
    private var peripheral: CBPeripheral?
    private var pending = 0

    init(target: UUID) {
        self.target = target
        super.init()
        central = CBCentralManager(delegate: self, queue: .main)
        DispatchQueue.main.asyncAfter(deadline: .now() + 30) { [self] in
            finish(4, "Timed out; Bluetooth permission, range, or connection may be unavailable")
        }
    }

    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        print("Bluetooth state=\(central.state.rawValue), authorization=\(CBManager.authorization.rawValue)")
        guard central.state == .poweredOn else {
            if central.state == .unauthorized { finish(5, "Bluetooth access has not been granted") }
            return
        }
        guard let found = central.retrievePeripherals(withIdentifiers: [target]).first else {
            finish(6, "Supplied AirPods peripheral is not in the Bluetooth cache")
            return
        }
        peripheral = found
        found.delegate = self
        print("Retrieved target; connecting")
        central.connect(found)
    }

    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        print("Target connected; discovering service metadata")
        peripheral.discoverServices(nil)
    }

    func centralManager(_ central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?) {
        finish(7, "Connection failed: \(error?.localizedDescription ?? "unknown")")
    }

    func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?) {
        if let error { finish(8, "Service discovery failed: \(error.localizedDescription)"); return }
        let services = peripheral.services ?? []
        pending = services.count
        if pending == 0 { finish(0, "No exposed GATT services"); return }
        for service in services {
            print("Service \(service.uuid.uuidString)")
            peripheral.discoverCharacteristics(nil, for: service)
        }
    }

    func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) {
        if let error { print("Characteristic discovery: \(error.localizedDescription)") }
        for characteristic in service.characteristics ?? [] {
            print("  \(service.uuid.uuidString) / \(characteristic.uuid.uuidString) properties=0x\(String(characteristic.properties.rawValue, radix: 16))")
        }
        pending -= 1
        if pending == 0 { finish(0, "Metadata discovery complete; no characteristic values read or written") }
    }

    private func finish(_ code: Int32, _ message: String) {
        print(message)
        if let peripheral { central.cancelPeripheralConnection(peripheral) }
        exit(code)
    }
}

setbuf(stdout, nil)
guard CommandLine.arguments.count == 2, let target = UUID(uuidString: CommandLine.arguments[1]) else {
    print("Usage: airpods-gatt <known-AirPods-peripheral-UUID>")
    exit(2)
}
let probe = Probe(target: target)
RunLoop.main.run()
