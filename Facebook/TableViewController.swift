//
//  TableViewController.swift
//  Facebook
//
//  Created by Egna Lizeth Polo Rubiano on 13/08/2021.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       /* let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = "Soy la celda #\(indexPath.row)"
        return cell */
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellCustomTableViewCell", for: indexPath)
        
        if let newCell = cell as? CellCustomTableViewCell{
            newCell.setUpCell(usename: "@egnapolo\(indexPath.row)", message: "Soy un tweet")
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("la celda #\(indexPath.row) fue seleccionada.")
    }

    @IBOutlet weak var TableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.dataSource = self
        TableView.register(UINib(nibName: "CellCustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CellCustomTableViewCell")
        //TableView.register(UITableViewCell.self, forCellReuseIdentifier: "celda")
        TableView.delegate = self
        // Do any additional setup after loading the view.
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
