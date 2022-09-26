//
//  VideoViewController.swift
//  Movie_tabelView
//
//  Created by jr on 2022/9/24.
//

import UIKit
import WebKit

class VideoViewController: UIViewController {
    
    //儲存上一頁傳入的資料。肯定一定有東西傳入，所以用！
    var video:Video!
   
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        updateIU()
        
    }
    
    func  updateIU() {
        //標題顯示電影名稱
        title = video.name
        //播放電影預告片
        if let url = URL(string: "\(video.trailer)"){
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
