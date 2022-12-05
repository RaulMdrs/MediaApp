//
//  HomeViewControllerExtension.swift
//  TrendingMidias
//
//  Created by Raul de Medeiros on 02/12/22.
//

import Foundation
import UIKit


extension HomeViewController : JsonDecoderProtocol{
    func decodeMedias(_ brain: JsonDecoder, data: Results) {
        listMedias = data
        DispatchQueue.main.async {
            self.mediaTableView.reloadData()
        }
    }
    
    func failParse(error: Error) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: "Ops, algo deu errado", message: "Houve um erro inesperado, tente novamente em alguns instantes", preferredStyle: .actionSheet)
            alert.addAction(UIAlertAction(title: "retornar", style: .cancel))
            
            self.present(alert, animated: true)
        }
    }
}

extension HomeViewController : UITableViewDelegate{
    
}

extension HomeViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listMedias?.results.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mediaCell", for: indexPath) as! MediaCell
        
        cell.configLayout(media: listMedias!.results[indexPath.row])
        
        return cell
    }
    
}
