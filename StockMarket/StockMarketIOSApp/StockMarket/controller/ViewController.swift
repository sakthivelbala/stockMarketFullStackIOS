//
//  ViewController.swift
//  StockMarket
//
//  Created by Sakthivel Balakrishnan on 22/03/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
    
    private let refreshControl = UIRefreshControl()
    let changeTextView:UITextView={
        let textView=UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.backgroundColor=UIColor.red
        textView.font = .systemFont(ofSize: 15)
        textView.text="-456"
        textView.isEditable=false
        textView.isSelectable=false
        textView.isScrollEnabled=false
        textView.layer.cornerRadius=4
        return textView
    }()
    let totalValueText:UITextView={
        let textView=UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.backgroundColor=UIColor(red: 0.969, green: 0.969, blue: 0.969, alpha: 1.0)
        textView.text="Total Value : "
        textView.isEditable=false
        textView.isSelectable=false
        textView.isScrollEnabled=false
        return textView
    }()
    let currencyText:UITextView={
        let textView=UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.backgroundColor=UIColor(red: 0.969, green: 0.969, blue: 0.969, alpha: 1.0)
        textView.text="SGD"
        textView.isEditable=false
        textView.isSelectable=false
        textView.isScrollEnabled=false
        textView.transform=CGAffineTransform(rotationAngle: CGFloat(Double.pi+Double.pi/2))
        return textView
    }()
    
    let topBarView:UIView={
        let view=UIView()
        view.translatesAutoresizingMaskIntoConstraints=false
        return view
    }()
    
    let url:String="http://localhost:8080/user/stock/user2"
    var userData:userDataModel!
    
    //to fetchdata from the provided url
    func fetchData(){
        guard let url=URL(string: url) else{ return }
        URLSession.shared.dataTask(with: url){(data, response, err)in
            DispatchQueue.main.async {
                if let err=err{
                    print("Failed to get data from URL",err)
                    return
                }
                guard let data=data else{return}
                do{
                    let decoder=JSONDecoder()
                    self.userData=try decoder.decode(userDataModel.self, from: data)
                    print(self.userData)
                    self.refreshControl.endRefreshing()
                    self.collectionView?.reloadData()
                    self.currencyText.text=self.userData.currency
                    self.changeTextView.text="\(self.userData.totalChange)"
                    self.totalValueText.text="Total Value : \(Int(self.userData.totalValue))"
                    if(self.userData.totalChange<0){
                        self.changeTextView.backgroundColor=UIColor.red
                    }else{
                        self.changeTextView.backgroundColor=UIColor.green
                    }
                }catch let jsonErr{
                    print("Failed to decode",jsonErr)
                }
            }
            }.resume()
    }
    
    @objc private func refreshData(_ sender: Any) {
        fetchData()
    }
    
    fileprivate func setUpTopBar() {
        navigationItem.titleView=topBarView
        topBarView.addSubview(totalValueText)
        NSLayoutConstraint.activate([
            totalValueText.leftAnchor.constraint(equalTo: topBarView.leftAnchor, constant: -5),
            totalValueText.widthAnchor.constraint(equalToConstant: 140)
            ])
        topBarView.addSubview(changeTextView)
        NSLayoutConstraint.activate([
            changeTextView.rightAnchor.constraint(equalTo: topBarView.rightAnchor, constant: 5),
            changeTextView.heightAnchor.constraint(equalTo: topBarView.heightAnchor, multiplier:0.7),
            changeTextView.widthAnchor.constraint(equalToConstant: 70)
            ])
        topBarView.addSubview(currencyText)
        NSLayoutConstraint.activate([
            currencyText.centerXAnchor.constraint(equalTo: topBarView.centerXAnchor)
            ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView.backgroundColor=UIColor.lightGray
        collectionView?.register(stockCell.self, forCellWithReuseIdentifier: "cellId")
        setUpTopBar()
        collectionView.refreshControl=refreshControl
        refreshControl.addTarget(self, action: #selector(refreshData(_:)), for: .valueChanged)
        fetchData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if(userData==nil){return 0}
        return userData.stocks.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath)as! stockCell
        cell.Stock=userData.stocks[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height/7)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2.5
    }


}

