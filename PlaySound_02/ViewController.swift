import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            // 設置一個變數來代表音效的儲存位置
            let filePath = NSBundle.mainBundle().pathForResource("airplane1", ofType: "mp3")
            // 將指定為AVAudioPlayer型別的變數與要播放的音效做關聯
            audioPlayer = try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: filePath!))
            audioPlayer.prepareToPlay()
        } catch {
            print("Error")
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 按下Play，就會播放音效
    @IBAction func playSound(sender: AnyObject) {
        audioPlayer.play()
    }

    // 按下Pause，播放會暫停
    @IBAction func pauseSound(sender: AnyObject) {
        audioPlayer.pause()
    }
    
    // 按下Stop，播放會停止
    @IBAction func stopSound(sender: AnyObject) {
        audioPlayer.stop()
        // 記得要讓時間重回0.0
        audioPlayer.currentTime = 0.0
    }
    
}

