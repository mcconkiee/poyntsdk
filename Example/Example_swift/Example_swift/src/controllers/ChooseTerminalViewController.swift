//
//  ChooseTerminalViewController.swift
//  Poynt_iOS_SDK
//
//  Created by Eric McConkie on 6/22/16.
//  Copyright © 2016 poynt.co. All rights reserved.
//

import UIKit


class ChooseTerminalViewController: UITableViewController{
    let discovery = PoyntTerminalDiscover()
    var data: [PoyntTerminal] = []
    var selectedTerminal: PoyntTerminal?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Looking for terminals..."

        discovery.findTerminals { (terminals) in
            if let terms = terminals as? [PoyntTerminal] {
                self.data = terms
                self.tableView.reloadData()
                self.title = "\(self.data.count) terminals"
            }
        }

    }
    @IBAction func onCancel(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "unwindToHome", sender: self)
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = self.tableView.dequeueReusableCell(withIdentifier: "terminalCell") as UITableViewCell?{
            let poyntTerminal = self.data[indexPath.row]
            cell.textLabel!.text = poyntTerminal.name
            cell.detailTextLabel!.text = "\(poyntTerminal.ip!):\(poyntTerminal.service!.port)"
            return cell
        }
        return UITableViewCell()
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let poyntTerminal = self.data[indexPath.row]
        self.selectedTerminal = poyntTerminal
        self.performSegue(withIdentifier: "unwindToHome", sender: self)
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

}
