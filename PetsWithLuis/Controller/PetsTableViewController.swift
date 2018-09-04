//
//  PetsTableViewController.swift
//  PetsWithLuis
//
//  Created by Ilgar Ilyasov on 9/4/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class PetsTableViewController: UITableViewController {

    var petController = PetController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petController.pets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PetsTableCell", for: indexPath)
        let pet = petController.pets[indexPath.row]
        cell.textLabel?.text = pet
        
        return cell
    }

}
