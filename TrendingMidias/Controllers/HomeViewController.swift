//
//  ViewController.swift
//  TrendingMidias
//
//  Created by Raul de Medeiros on 02/12/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var mediaTableView: UITableView!
    var listMedias : Results?
    var jsonParse : JsonDecoder = JsonDecoder()
    override func viewDidLoad() {
        super.viewDidLoad()
        mediaTableView.delegate = self
        mediaTableView.dataSource = self
        jsonParse.delegate = self
        jsonParse.requestMedia(type: "movie")
    }
}

