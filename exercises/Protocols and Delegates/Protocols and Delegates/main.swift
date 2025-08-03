
protocol AdvanceLifeSupport {
    func peformCPR()
}

class EmergencyCallHandler {
    var delegate: AdvanceLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happened?")
    }
    
    func medicalEmergency() {
        delegate?.peformCPR()
    }
}

struct Paramedic: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func peformCPR() {
        print("The paramedic does chest compressions, 30 per second.")
    }
}

class Doctor: AdvanceLifeSupport {
    
    init(handler: EmergencyCallHandler) {
        handler.delegate = self
    }
    
    func peformCPR() {
        print("The doctor does chest compressions, 30 per seconds.")
    }
    
    func useStethescope() {
        print("Listening for heart sounds")
    }
}

class Surgeon: Doctor {
    override func peformCPR() {
        super.peformCPR()
        print("Sings staying alive by the BeeGees")
    }
    
    func useElecctricDrill() {
        print("Whirr...")
    }
}

let emilio = EmergencyCallHandler()
let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
