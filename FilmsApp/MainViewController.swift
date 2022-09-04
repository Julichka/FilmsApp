//
//  ViewController.swift
//  FilmsApp
//
//  Created by Kirill Timanovsky on 29.07.2021.
//

import UIKit

class MainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UISearchBarDelegate {
    
    var testArray: [TestModel] = [
        TestModel(testPic: "image1", testTitle: "Movie 1", testYear: "2013", testRating: "4.5"),
        TestModel(testPic: "image2", testTitle: "Movie 2", testYear: "2014", testRating: "4.1"),
        TestModel(testPic: "image3", testTitle: "Movie 3", testYear: "2015", testRating: "4.2"),
        TestModel(testPic: "image4", testTitle: "Movie 4", testYear: "2016", testRating: "4.3"),
        TestModel(testPic: "image5", testTitle: "Movie 5", testYear: "2017", testRating: "4.4"),
        TestModel(testPic: "image6", testTitle: "Movie 6", testYear: "2018", testRating: "4.6"),
        TestModel(testPic: "image7", testTitle: "Movie 7", testYear: "2019", testRating: "4.7"),
        TestModel(testPic: "image8", testTitle: "Movie 8", testYear: "2020", testRating: "4.8"),
        TestModel(testPic: "image9", testTitle: "Movie 9", testYear: "2011", testRating: "4.9"),
        TestModel(testPic: "image10", testTitle: "Movie 10", testYear: "2012", testRating: "4.1"),
        TestModel(testPic: "image11", testTitle: "Movie 11", testYear: "2014", testRating: "4.0"),
        TestModel(testPic: "image12", testTitle: "Movie 12", testYear: "2018", testRating: "4.3"),
        TestModel(testPic: "image13", testTitle: "Movie 13", testYear: "2021", testRating: "4.6"),
        TestModel(testPic: "image14", testTitle: "Movie 14", testYear: "2022", testRating: "4.8"),
        TestModel(testPic: "image15", testTitle: "Movie 15", testYear: "2001", testRating: "5.0")
    ]
    

    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.delegate = self
        collectionView.delegate = self
        
        searchBar.delegate = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FilmCell", for: indexPath) as? FilmCollectionViewCell else { return UICollectionViewCell()
        }
        
        cell.title.text = testArray[indexPath.row].testTitle
        cell.releaseYear.text = testArray[indexPath.row].testYear
        cell.rating.text = testArray[indexPath.row].testRating
        cell.icon.image = UIImage(named: testArray[indexPath.row].testPic ?? "image1")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return testArray.count
    }
}
