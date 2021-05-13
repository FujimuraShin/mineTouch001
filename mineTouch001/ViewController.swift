//
//  ViewController.swift
//  mineTouch001
//
//  Created by mf-osaka on 2021/05/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView001: UIImageView!
    
    @IBOutlet weak var imageView002: UIImageView!
    
    @IBOutlet weak var imageView003: UIImageView!
    
    @IBOutlet weak var imageView004: UIImageView!
    
    @IBOutlet weak var imageView005: UIImageView!
    
    @IBOutlet weak var ImageView006: UIImageView!
    
    @IBOutlet weak var imageView007: UIImageView!
    
    @IBOutlet weak var imageView008: UIImageView!
    
    @IBOutlet weak var imageView009: UIImageView!
    
    var imageListArray:Array<UIImageView> = []
    
    var cnt=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        //マルチタッチイベントを検出する
        self.view.isMultipleTouchEnabled=true
        
        //imageViewを配列に格納
        imageListArray=[]
        
        imageListArray.append(imageView001);
        imageListArray.append(imageView002);
        imageListArray.append(imageView003);
        
        imageListArray.append(imageView004);
        imageListArray.append(imageView005);
        imageListArray.append(ImageView006);
        
        imageListArray.append(imageView007);
        imageListArray.append(imageView008);
        imageListArray.append(imageView009);
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        NSLog("touches count: %d",touches.count)
        
        //タップ数が2個で画像を表示
        if(touches.count==2 && cnt<10){
            imageView001.image=UIImage(named:"Dophin.jpg")
            
            cnt=cnt+1
            imageListArray[cnt].image=UIImage(named:"Dophin.jpg")
            
            if(cnt==10){
                cnt=8
            }
            
        }
    }


}

