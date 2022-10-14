//
//  ViewController.swift
//  example
//
//  Created by Goutham Boya on 30/09/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tblvw: UITableView!
    
    var arrdata = [Instruction]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        call()
    }
    
    func call(){
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            
            do {
                // if let data = data,let json = try? JSONSerialization.jsonObject(with: data, options: []) {
                // print(json)
                if error == nil{
                    self.arrdata = try JSONDecoder().decode([Instruction].self, from: data!)
                    
                }
                DispatchQueue.main.async {
                    self.tblvw.reloadData()
                }
                
            }catch{
                print("Error")
            }
            
        }.resume()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.arrdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.firstlbl.text = "User id : \(arrdata[indexPath.row].userID)"
        cell.seclbl.text = "Title : \(arrdata[indexPath.row].title)"
        cell.thirlbl.text = "Id : \(arrdata[indexPath.row].id)"
        cell.foulbl.text = "Body : \(arrdata[indexPath.row].body)"
        
        return cell
        
    }
    
}

