//
//  ViewController.swift
//  NavigateApp
//
//  Created by Consultant on 11/6/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    var data: [String] = ["Michael Jordan", "Scottie Pippen", "Derrick Rose", "Artis Gilmore", "Bob Love", "Chet Walker", "Jerry Sloan", "Jimmy Butler", "Horace Grant", "Dennis Rodman", "Joakim Noah", "Toni Kukoc", "Luol Deng", "Norm Van Lier", "Reggie Theus", "Kirk Hinrich", "Ben Gordon", "B.J. Armstrong", "Orlando Woolridge", "Steve Kerr", "John Paxson", "Bill Cartwright", "Tom Boerwinkle", "Taj Gibson", "Bob Boozer", "David Greenwood", "Pau Gasol", "Elton Brand", "Clifford Ray", "Charles Oakley"]
    var profile: [String] = ["Height: 6'6, Weight: 216", "Height: 6'8, Weight: 228", "Height: 6'3, Weight: 220", "Height: 7'2, Weight: 240", "Height: 6'8, Weight: 215", "Height: 6'6, Weight: 212", "Height: 6'5, Weight: 195", "Height: 6'7, Weight: 229", "Height: 6'10, Weight: 245", "Height: 6'7, Weight: 220", "Height: 6'11, Weight: 232", "Height: 6'11, Weight: 235", "Height: 6'9, Weight: 220", "Height: 6'1, Weight: 173", "Height: 6'6, Weight: 190", "Height: 6'4, Weight: 190", "Height: 6'3, Weight: 200", "Height: 6'2, Weight: 185", "Height: 6'9, Weight: 215", "Height: 6'3, Weight: 180", "Height: 6'2, Weight: 185", "Height: 7'1, Weight: 245", "Height: 7'0, Weight: 265", "Height: 6'9, Weight: 231", "Height: 6'8, Weight: 216", "Height: 6'9, Weight: 222", "Height: 7'1, Weight: 249", "Height: 6'9, Weight: 254", "Height: 6'9, Weight: 201", "Height: 6'8, Weight: 245"]
    var about: [String] = ["The GOAT, any other argument is invalid", "The GOAT's right hand man, so good", "One of my fav players to watch growing up. Unstoppable force", "Mr. Fro man was pretty good, before my time but still a dawg", "Another mans that is very high praised in Chicago", "Chet was pretty good, but I think he got placed a little higher than he shouldve", "Jerry is in his rightful place, very good and very well known", "Jimmy Buckets was the hero we needed after D.Rose got injured. He really stepped his game up for the team and put the directionless team on his back", "Horace, the big 4 eyes was a solid presence on Jordans championship team. Definitely deserves to be here", "Dennis should be placed higher, definitely an underrated presence. The man was a bulldog", "Joakim was D.Rose's right hand man. The two of them got a lot of work done. Very animated player, loved watching him play.", "Toni was a solid player, got a lot of hate from his teammates due to internal conflicts with the organization but he deserves a spot up here", "Luol was such a solid player that got less credit than he deserved. Silent assassin", "Dont know much about Norm but his name makes him sound like he should have a different profession", "Reggie needs more veggies, should not be up here", "CAPTAIN KIRK: this man was a solid guard for the bulls when we were not so good. Kirkie gets all my love, def deserves a spot here", "Great shooter, was almost automatic", "Okay, not going to lie, I think he changed his name on purpose...", "Orlando is not a person im familiar with, after some research, hes alright i guess. he can stay.", "This man is known for making a game winning shot for the finals championship. Sharpshooter and now coach of the GSW. He gets a spot.", "This man could defend just about anybody and you wouldnt have to worry too much about him. Not great offensively but on defence, monster", "Billy boy was alright i guess", "Boerwinkle was a pretty good big man", "Solid presence in the paint. Very animated player and got work done.", "Thought he might be related to Carlos Boozer, sadly is not. That would be a cool father son moment.", "Greenwood i have never heard of before this assignment, not going to lie", "Pau!!! This Spanish machine was a good big man that helped us out a lot, even though he didnt stay with the bulls long", "Idk who this is", "Okay now were getting to the scrubbs.", "This man shouldnt be here. Some better options for the 30 spot for sure."]
    var ppg: [Double] = [30.12, 16.1, 25, 17.1, 17.6, 18.2, 14, 17.8, 11.2, 7.3, 8.8, 11.6, 14.8, 11.8, 18.5, 10.9, 14.9, 9.8, 16, 6, 7.2, 13.2, 7.2, 9, 14.8, 10.2, 17, 15.9, 7.4, 9.7]
    var playerRating: [Double] = [100, 97, 95, 94, 93.5, 93, 92.7, 92.4, 91.5, 91.4, 91, 90, 89.8, 89.5, 89.4, 89, 88.7, 88, 87.8, 87.6, 87.5, 87.4, 87, 86.9, 86.7, 86.5, 86.4, 86.1, 86, 85]
    var sendData: String = ""

    
    override func viewDidLoad() {
        self.setupUI()
        self.title = "Top 30"
    }
    
    func setupUI(){
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "XIBTableViewCell", bundle: nil), forCellReuseIdentifier: "XIBTableViewCell")
        self.tableView.delegate = self
//        self.tableView.register(UINib(), forCellReuseIdentifier: "XIBTableViewCell1")
    }
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "XIBTableViewCell", for: indexPath) as? XIBTableViewCell
        else {
            return UITableViewCell()
        }

            
        cell.seeMe.image = UIImage(named: "\(self.data[indexPath.row])")
        cell.label.text = self.data[indexPath.row]
        cell.progressBar.setProgress(Float((self.playerRating[indexPath.row])/100), animated: true)
        cell.navigationPressed(self)
        //if(cell.navigationPressed(self)){
        //}
//        if sender.selectedSegmentIndex == 0 {
//            infoLabel.text = "He tall"
//        } else {
//            infoLabel.text = "Kinda trash tho"
//        }
        //print("Switcharoo: ")
        //print(cell.switcharoo)

        return cell
    }
//        cell.textLabel?.text = self.data[indexPath.row]
//        return cell
    
    


}

extension ViewController : UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.sendData = about[indexPath.row]

        print("The selected path is \(indexPath)")
        self.performSegue(withIdentifier: "NavigationSegue", sender: self)


    }
    override func  prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let info = segue.destination as! NavigationDetailViewController
        
        info.nameString = self.sendData
    }
}
