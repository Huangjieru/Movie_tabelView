//
//  MovieTableViewController.swift
//  Movie_tabelView
//
//  Created by jr on 2022/9/21.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    
    var videos = [
        [Video(pic: "伽利略", name: "伽利略", time: "2022-09-17", subtitle: "禁忌的魔術", trailer: URL(string: "https://www.youtube.com/watch?v=WimkwR26DVY&ab_channel=KKTV-%E6%97%A5%E5%8A%87%E3%80%81%E5%8F%B0%E5%8A%87%E3%80%81%E9%9F%93%E5%8A%87%E3%80%81%E9%99%B8%E5%8A%87%E3%80%81%E5%8B%95%E6%BC%AB%E7%B7%9A%E4%B8%8A%E7%9C%8B")!),Video(pic: "Fate魔法俏佳人傳奇", name: "魔法俏佳人傳奇", time: "2022-09-16", subtitle: "Fate: The Winx Saga", trailer: URL(string: "https://www.youtube.com/watch?v=dfXRud1AIiw&ab_channel=Netflix")!),Video(pic: "BLIND局中人", name: "BLIND局中人", time: "2022-09-16", subtitle: "BLIND", trailer: URL(string: "https://www.youtube.com/watch?v=2Cjd3WiOEw0&ab_channel=KdramaZone")!),Video(pic: "因為我們忘記一切", name: "因為我們忘記一切", time: "2022-09-14", subtitle: "她為何會失蹤", trailer: URL(string: "https://www.youtube.com/watch?v=3dIdkvdEW34&ab_channel=DisneyPlusTW")!),Video(pic: "桑托", name: "桑托", time: "2022-09-16", subtitle: "Santo", trailer: URL(string: "https://www.youtube.com/watch?v=sspsUdLrc-g&ab_channel=Netflix")!)
        ],
        [
        Video(pic:"2001太空漫遊",name: "2001太空漫遊", time: "2022-09-16", subtitle: "2001: A Space Odyssey",
              trailer:URL(string: "https://www.youtube.com/watch?v=AhPvYCqCv-I&ab_channel=華納兄弟台灣".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!),
        Video(pic:"墜", name: "墜", time: "2022-09-16", subtitle: "The Fall",trailer: URL(string: "https://www.youtube.com/watch?v=xw1jXvgZj6U&ab_channel=GaragePlay車庫娛樂".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!),
        Video(pic: "搖曳露營", name: "搖曳露營", time: "2022-09-16", subtitle: "LAID BACK CAMP", trailer:URL(string: "https://www.youtube.com/watch?v=vgsFdMrr7dw&ab_channel=MedialinkHongKong".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!),
        Video(pic: "新超人狂霸", name: "新・超人力霸王", time: "2022-09-16", subtitle: "Shin Ultraman", trailer:URL(string: "https://www.youtube.com/watch?v=Rh6UCPfMl1s&ab_channel=IGNChina".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!),
        Video(pic: "看你往哪跑", name: "看你往哪跑", time: "2022-09-16", subtitle: "See How They Run", trailer:URL(string: "https://www.youtube.com/watch?v=w69XNo_LzZ4&ab_channel=二十世紀影業".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!),
        Video(pic: "神隱少女", name: "神隱少女", time: "2022-09-08", subtitle: "Spirited Away", trailer: URL(string: "https://www.youtube.com/watch?v=CGbHZt5smxo&ab_channel=甲上娛樂".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!),
        Video(pic: "科學少女", name: "科學少女", time: "2022-09-16", subtitle: "S-Girl" ,trailer: URL(string: "https://www.youtube.com/watch?v=6ukJJW5myuI&ab_channel=華影國際".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!),
        Video(pic: "舞徑", name: "舞徑", time: "2022-09-16", subtitle: "Ballet in Tandem" ,trailer:URL(string: "https://www.youtube.com/watch?v=wUNc95ZguDM&ab_channel=好威映象HoorayFilms".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!),
        Video(pic: "花樣年華", name: "花樣年華", time: "2022-09-16", subtitle: "In the Mood for Love", trailer:URL(string: "https://www.youtube.com/watch?v=zCkNocGjkxM&ab_channel=卡卡洛普.電影".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!),
        Video(pic: "萌男友是柑橘色", name: "萌男友是柑橘色", time: "2022-09-16", subtitle: "My Boyfriend in Orange", trailer:URL(string: "https://www.youtube.com/watch?v=wRCQRAkjwjo&ab_channel=捷傑電影".addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!)
    ]
]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //調整row的高度
        tableView.rowHeight = CGFloat(220)

    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return videos.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return videos[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(MovieTableViewCell.reuseIdentifier)", for: indexPath) as! MovieTableViewCell
        let video = videos[indexPath.section][indexPath.row]
        
        //改字體、大小
        cell.nameLabel.font = UIFont(name: "ChenYuluoyan-Thin", size: 33)
        cell.subtitleLabel.font = UIFont(name: "ChenYuluoyan-Thin", size: 25)
        cell.timeLabel.font = UIFont(name: "ChenYuluoyan-Thin", size: 20)
        //圖片高度、圖片位置
        cell.picImageView.frame.size.height = CGFloat(180)
        cell.picImageView.frame.origin = CGPoint(x: 10, y: 20)
        //cell右側顯示 > 樣式
        cell.accessoryType = .disclosureIndicator
        //圖片樣式、圖片寬度
        cell.picImageView.contentMode = UIView.ContentMode.scaleAspectFit
        cell.picImageView.frame.size.width = 150
        //資料顯示在畫面上
        cell.nameLabel.text = video.name
        cell.subtitleLabel.text = video.subtitle
        cell.timeLabel.text = video.time
        cell.picImageView.image = UIImage(named: video.pic)
        

        return cell
    }
    //section的名稱
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var header:String = ""
        switch section{
            case 0:
                header = Videotype.drama.rawValue
            
            case 1:
                header = Videotype.movie.rawValue
        default:
            break
        }
        
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }
   
    @IBSegueAction func showVideo(_ coder: NSCoder) -> VideoViewController? {
        //點選到cell
        if let section = tableView.indexPathForSelectedRow?.section, let row = tableView.indexPathForSelectedRow?.row{
            let controller = VideoViewController(coder: coder)
            controller?.video = videos[section][row]

            return controller
        }else{
            return nil
        }
        
    }
}
    
  
   
