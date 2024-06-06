//
//  ViewController.swift
//  Tasks
//
//  Created by Hoja Arzanesh on 6/5/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    var tasks = [String]()
//    var tasks: [String] = ["1", "2", "3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.dataSource = self
        
        // Get all current saved tasks
    }
    
    @IBAction func didTapAdd() {
        
    }
}
    
// communicates with UITableView to help it perform actions
extension ViewController: UITableViewDelegate {
    
    // handles taps on a cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var configuration = cell.defaultContentConfiguration()
        configuration.text = tasks[indexPath.row]
        cell.contentConfiguration = configuration
        return cell
    }
}

