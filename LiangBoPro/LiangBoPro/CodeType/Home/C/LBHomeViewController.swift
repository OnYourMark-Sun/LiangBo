//
//  LBHomeViewController.swift
//  LiangBoPro
//
//  Created by xujiahui on 2019/6/30.
//  Copyright © 2019 xujiahui. All rights reserved.
//

import UIKit
import AVFoundation
class LBHomeViewController: XJHBaseViewController {

    var audioPlayer: AVAudioPlayer!
    var listTableView: LBListTableview!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        self.view.backgroundColor = UIColor.init(patternImage:UIImage(named:"liangbo")!)
        
        
        listTableView = LBListTableview(frame: CGRect.zero, style: .plain)
        self.view.addSubview(listTableView)
        
        playMusic()
        setLayout()
        // Do any additional setup after loading the view.
    }
    
    //获得数据 传给tableview 进行刷新
    func getDataToReloadTabList() {
        
        let listArr = LBGetDataList.GetDataList()
        
        listTableView.upDataWithListArray(list: listArr)
        
    }
    
    func setLayout() {
        
        listTableView.snp.makeConstraints { (make) in
            
            make.top.equalToSuperview()
            make.width.equalToSuperview()
            make.bottom.equalToSuperview().offset(-200)
            
        }
        
    }
    
    func playMusic(){
        
        let path = Bundle.main.path(forResource: "男孩", ofType: "mp3")
        let pathURL=NSURL(fileURLWithPath: path!)
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: pathURL as URL)
        } catch {
            audioPlayer = nil
        }
        
        audioPlayer?.prepareToPlay()
        
        let playbtn = UIButton(frame: CGRect(x: 60, y: 200, width: 100, height: 40))
        playbtn.backgroundColor = UIColor.cyan
        playbtn.setTitle("play", for: .normal)
        playbtn.setTitleColor(UIColor.white, for: .normal)
        
        
        let pausebtn = UIButton(frame: CGRect(x: 180, y: 200, width: 100, height: 40))
        pausebtn.setTitle("pause", for: .normal)
        pausebtn.setTitleColor(UIColor.white, for: .normal)
        pausebtn.backgroundColor = UIColor.cyan
        self.view.addSubview(playbtn)
        self.view.addSubview(pausebtn)
        
        playbtn.addTarget(self, action: #selector(play), for: .touchUpInside)
        pausebtn.addTarget(self, action: #selector(pause), for: .touchUpInside)
        
        
        self.view.addSubview(playbtn)
        self.view.addSubview(pausebtn)
        
    }
    
   @objc func play(){
        audioPlayer?.play()
    }
    
   @objc func pause(){
        audioPlayer?.pause()
    }
    

}
