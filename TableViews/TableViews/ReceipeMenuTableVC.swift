//
//  ReceipeMenuTableVC.swift
//  TableViews
//
//  Created by DCS on 24/06/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class ReceipeMenuTableVC: UIViewController {
    
    var tableView = UITableView()
    var recipeArr = ["Pizza", "Burger", "Sendwich","Nuddles","Panjabi Dish"]
    var recipeDetails = ["Veggie Pizza. When you want to jazz up your cheese pizza with color and texture, veggies are the perfect topping. Pizza, dish of Italian origin consisting of a flattened disk of bread dough topped with some combination of olive oil, oregano, tomato, olives, mozzarella or other cheese, and many other ingredients, baked quickly—usually, in a commercial setting, using a wood-fired oven heated to a very high temperature—and served hot ... Rs.350", "Stuffed Bean Burger.A hamburger (also burger for short) is a food, typically considered a sandwich, consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled. ... A hamburger topped with cheese is called a cheeseburger.  Rs.105", "Jazz up your standard square sandwich by carving these cute flower sandwiches using petal shaped cookie cutters. Easy (yet effective) kids party idea.  Rs.120", "Fairly easy to make hakka noodles is a popular Indo-Chinese dish of stir fried noodles. You will find it being made and served in many restaurants ...  Rs.  150", "Punjabi Recipes, Punjabi Veg Recipes · Punjabi Drinks, Lassi · Punjabi Shorbas, Soups · Punjabi Swadisht Nashta · Punjabi Rotis, Parathas.  Rs. 450"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Recipes"
        setTableView()
        view.backgroundColor = UIColor.white
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setTableView(){
        tableView.frame = self.view.frame
        tableView.backgroundColor = UIColor.clear
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = UIColor.clear
        tableView.backgroundColor = UIColor.clear
        self.view.addSubview(tableView)
        
        tableView.register(ReceipeCell.self, forCellReuseIdentifier: "Cell")
    }
    
}

extension ReceipeMenuTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipeArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ReceipeCell
        
        cell.userImage.image = UIImage(named: recipeArr[indexPath.row])
        cell.namelbl.text = recipeArr[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailedReceipeVC()
            vc.detail = recipeDetails[indexPath.row]
            vc.image = UIImage(named: recipeArr[indexPath.row])!
            vc.lbl = recipeArr[indexPath.row]
            self.navigationController?.pushViewController(vc, animated: true)
    }
}

