import UIKit
import AVFoundation

class ViewController: UIViewController {
    var bombSoundEffect: AVAudioPlayer!
    
    
    @IBAction func bieupTouched() {
        play(fromPath: load(fromName: "bieup"))
    }
    
    @IBAction func aTouched() {
        play(fromPath: load(fromName: "a"))
    }
    
    @IBAction func nieunTouched() {
        play(fromPath: load(fromName: "nieun"))
    }
    
    @IBAction func mieumTouched() {
        play(fromPath: load(fromName: "mieum"))
    }
    
    @IBAction func iTouched() {
        play(fromPath: load(fromName: "i"))
    }
    
    @IBAction func rieulTouched() {
        play(fromPath: load(fromName: "rieul"))
    }
    
    @IBAction func giyeokTouched() {
        play(fromPath: load(fromName: "gieuk"))
    }
    
    @IBAction func oTouched() {
        play(fromPath: load(fromName: "o"))
    }
    
    @IBAction func ieungTouched() {
        play(fromPath: load(fromName: "ieung"))
    }
    
    @IBAction func digeutTouched() {
        play(fromPath: load(fromName: "digeut"))
    }
    
    @IBAction func siotTouched() {
        play(fromPath: load(fromName: "siot"))
    }
    
    @IBAction func euTouched() {
        play(fromPath: load(fromName: "eo"))
    }
    
    @IBAction func uTouched() {
        play(fromPath: load(fromName: "u"))
    }
    
    @IBAction func eoTouched() {
        play(fromPath: load(fromName: "eo"))
    }
    
    @IBAction func eTouched() {
        play(fromPath: load(fromName: "e"))
    }
    
    @IBAction func aeTouched() {
        play(fromPath: load(fromName: "ae"))
    }
    
    @IBAction func jieutTouched() {
        play(fromPath: load(fromName: "jieut"))
    }
    
    @IBAction func hieutTouched() {
        play(fromPath: load(fromName: "hieut"))
    }
    
    private func play(fromPath path: String) {
        let url = URL(fileURLWithPath: path)
        
        do {
            let sound = try AVAudioPlayer(contentsOf: url)
            bombSoundEffect = sound
            sound.play()
        } catch
        {
        }
    }
    
    private func load(fromName name: String) -> String {
        return Bundle.main.path(forResource: "\(name)Sound.aiff", ofType:nil)!
    }
}
