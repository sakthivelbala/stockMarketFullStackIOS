//
//  stockCell.swift
//  StockMarket
//
//  Created by Sakthivel Balakrishnan on 22/03/19.
//  Copyright © 2019 Sakthivel Balakrishnan. All rights reserved.
//

import UIKit

class stockCell:UICollectionViewCell{
    var Stock:stock?{
        didSet{
            guard let unWrappedData = Stock else{ return}
            bpText.text="\(unWrappedData.basePoint)bp"
            changeText.text="\(unWrappedData.change)"
            yeildPercentage.text="Yield : \(unWrappedData.yeildPercentage)%"
            currentValue.text="\(unWrappedData.currentValue)"
            currencyText.text=unWrappedData.currency
            cpnValueText.text="\(unWrappedData.currentCpn)/\(unWrappedData.totalCpn)"
            if(unWrappedData.change>0){
                thirdView.backgroundColor=UIColor.green
                changeText.backgroundColor=UIColor.green
                bpText.backgroundColor=UIColor.green
            }else{
                thirdView.backgroundColor=UIColor.red
                changeText.backgroundColor=UIColor.red
                bpText.backgroundColor=UIColor.red
            }
            cpnPercentageText.text="\(unWrappedData.cpnPercentage)%"
            titleText.text="\(unWrappedData._id)"
            subTitle.text=unWrappedData.name
        }
    }
    
    let bpText:UITextView={
        let textView=UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.backgroundColor=UIColor.red
        textView.text="-4bp"
        textView.font = .systemFont(ofSize: 18)
        textView.isEditable=false
        textView.isSelectable=false
        textView.isScrollEnabled=false
        textView.textColor=UIColor.white
        return textView
    }()
    let changeText:UITextView={
        let textView=UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.backgroundColor=UIColor.red
        textView.text="+0.14"
        textView.font = .systemFont(ofSize: 30)
        textView.isEditable=false
        textView.isSelectable=false
        textView.isScrollEnabled=false
        textView.textColor=UIColor.white
        return textView
    }()
    let yeildPercentage:UITextView={
        let textView=UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.backgroundColor=UIColor.gray
        textView.text="yield : 3.6%"
        textView.font = .systemFont(ofSize: 18)
        textView.isEditable=false
        textView.isSelectable=false
        textView.isScrollEnabled=false
        textView.textColor=UIColor.white
        return textView
    }()
    let whiteLineChange:UIView={
        let view=UIView()
        view.translatesAutoresizingMaskIntoConstraints=false
        view.layer.borderWidth=10
        view.layer.borderColor=UIColor.white.cgColor
        view.layer.cornerRadius=5
        return view
    }()
    let whiteLine:UIView={
        let view=UIView()
        view.translatesAutoresizingMaskIntoConstraints=false
        view.layer.borderWidth=10
        view.layer.borderColor=UIColor.white.cgColor
        view.layer.cornerRadius=5
        return view
    }()
    let currentValue:UITextView={
        let textView=UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.backgroundColor=UIColor.gray
        textView.text="98.771"
        textView.font = .systemFont(ofSize: 20)
        textView.isEditable=false
        textView.isSelectable=false
        textView.isScrollEnabled=false
        textView.textColor=UIColor.white
        return textView
    }()
    let currencyText:UITextView={
        let textView=UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.backgroundColor=UIColor.gray
        textView.text="curren"
        textView.isEditable=false
        textView.isSelectable=false
        textView.isScrollEnabled=false
        textView.textColor=UIColor.white
        textView.transform=CGAffineTransform(rotationAngle: CGFloat(Double.pi+Double.pi/2))
        return textView
    }()
    let cpnValueText:UITextView={
        let textView=UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.backgroundColor=UIColor.black
        textView.text="09/23"
        textView.isEditable=false
        textView.isSelectable=false
        textView.isScrollEnabled=false
        textView.textColor=UIColor.white
        return textView
    }()
    let cpnPercentageText:UITextView={
        let textView=UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.backgroundColor=UIColor.black
        textView.text="3.26%"
        textView.isEditable=false
        textView.isSelectable=false
        textView.isScrollEnabled=false
        textView.textColor=UIColor.white
        return textView
    }()
    let cpnText:UITextView={
        let textView=UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.backgroundColor=UIColor.blue
        textView.text="CPN"
        textView.isEditable=false
        textView.isSelectable=false
        textView.isScrollEnabled=false
        textView.textColor=UIColor.white
        return textView
    }()
    let titleText:UITextView={
        let textView=UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.backgroundColor=UIColor.black
        textView.text="GE"
        textView.font = .systemFont(ofSize: 30)
        textView.isEditable=false
        textView.isSelectable=false
        textView.isScrollEnabled=false
        textView.textColor=UIColor.white
        return textView
    }()
    let subTitle:UITextView={
        let textView=UITextView()
        textView.translatesAutoresizingMaskIntoConstraints=false
        textView.isEditable=false
        textView.isSelectable=false
        textView.backgroundColor=UIColor.black
        textView.text="Cognizant Technology Solutions"
        textView.textColor=UIColor.white
        return textView
    }()
    let cpnView:UIView={
        let view=UIView()
        view.translatesAutoresizingMaskIntoConstraints=false
        view.layer.borderWidth=2
        view.layer.borderColor=UIColor.blue.cgColor
        view.layer.cornerRadius=5
        return view
    }()
    let firstView:UIView={
        let view=UIView()
        view.translatesAutoresizingMaskIntoConstraints=false
        return view
    }()
    let secondView:UIView={
        let view=UIView()
        view.translatesAutoresizingMaskIntoConstraints=false
        view.backgroundColor=UIColor.gray
        view.layer.cornerRadius=10
        return view
    }()
    let thirdView:UIView={
        let view=UIView()
        view.translatesAutoresizingMaskIntoConstraints=false
        view.backgroundColor=UIColor.red
        view.layer.cornerRadius=10
        return view
    }()
    fileprivate func firstViewTopHalf() {
        firstView.addSubview(titleText)
        NSLayoutConstraint.activate([
            titleText.widthAnchor.constraint(equalTo: secondView.widthAnchor),
            titleText.heightAnchor.constraint(equalTo: secondView.heightAnchor,multiplier:0.30)
            ])
        firstView.addSubview(subTitle)
        NSLayoutConstraint.activate([
            subTitle.topAnchor.constraint(equalTo: titleText.bottomAnchor),
            subTitle.widthAnchor.constraint(equalTo: secondView.widthAnchor),
            subTitle.heightAnchor.constraint(equalTo: secondView.heightAnchor,multiplier:0.28)
            ])
    }
    
    fileprivate func firstViewBottomHalf() {
        firstView.addSubview(cpnView)
        cpnView.addSubview(cpnText)
        cpnView.addSubview(cpnPercentageText)
        NSLayoutConstraint.activate([
            cpnPercentageText.leftAnchor.constraint(equalTo: cpnText.rightAnchor,constant:2)
            ])
        NSLayoutConstraint.activate([
            cpnView.topAnchor.constraint(equalTo: subTitle.bottomAnchor,constant:20),
            cpnView.widthAnchor.constraint(equalTo: firstView.widthAnchor,multiplier:0.70),
            cpnView.leftAnchor.constraint(equalTo: firstView.leftAnchor),
            cpnView.heightAnchor.constraint(equalTo: firstView.heightAnchor,multiplier:0.23)
            ])
        firstView.addSubview(cpnValueText)
        NSLayoutConstraint.activate([
            cpnValueText.topAnchor.constraint(equalTo: subTitle.bottomAnchor, constant: 20),
            cpnValueText.leftAnchor.constraint(equalTo: cpnView.rightAnchor, constant: 5)
            ])
    }
    
    fileprivate func setupFirstView() {
        firstViewTopHalf()
        firstViewBottomHalf()
    }
    
    fileprivate func setUpSecondView() {
        secondView.addSubview(currencyText)
        NSLayoutConstraint.activate([
            currencyText.topAnchor.constraint(equalTo: secondView.topAnchor,constant:10),
            currencyText.leftAnchor.constraint(equalTo: secondView.leftAnchor),
            currencyText.heightAnchor.constraint(equalToConstant: 30)
            ])
        secondView.addSubview(currentValue)
        NSLayoutConstraint.activate([
            currentValue.topAnchor.constraint(equalTo: secondView.topAnchor, constant: 10),
            currentValue.rightAnchor.constraint(equalTo: secondView.rightAnchor,constant:-5),
            currentValue.heightAnchor.constraint(equalTo: secondView.heightAnchor, multiplier: 0.4)
            ])
        secondView.addSubview(whiteLineChange)
        NSLayoutConstraint.activate([
            whiteLineChange.widthAnchor.constraint(equalTo: secondView.widthAnchor),
            whiteLineChange.centerXAnchor.constraint(equalTo: secondView.centerXAnchor),
            whiteLineChange.centerYAnchor.constraint(equalTo: secondView.centerYAnchor),
            whiteLineChange.heightAnchor.constraint(equalToConstant: 1)
            ])
        secondView.addSubview(yeildPercentage)
        NSLayoutConstraint.activate([
            yeildPercentage.bottomAnchor.constraint(equalTo: secondView.bottomAnchor,constant:-7),
            yeildPercentage.rightAnchor.constraint(equalTo: secondView.rightAnchor, constant: -3)
            ])
    }
    
    fileprivate func setUpThirdView() {
        thirdView.addSubview(changeText)
        NSLayoutConstraint.activate([
            changeText.topAnchor.constraint(equalTo: thirdView.topAnchor, constant: 4),
            changeText.rightAnchor.constraint(equalTo: thirdView.rightAnchor, constant: -4)
            ])
        thirdView.addSubview(whiteLine)
        NSLayoutConstraint.activate([
            whiteLine.widthAnchor.constraint(equalTo: thirdView.widthAnchor),
            whiteLine.centerXAnchor.constraint(equalTo: thirdView.centerXAnchor),
            whiteLine.centerYAnchor.constraint(equalTo: thirdView.centerYAnchor),
            whiteLine.heightAnchor.constraint(equalToConstant: 1)
            ])
        thirdView.addSubview(bpText)
        NSLayoutConstraint.activate([
            bpText.bottomAnchor.constraint(equalTo: thirdView.bottomAnchor,constant:-5),
            bpText.rightAnchor.constraint(equalTo: thirdView.rightAnchor, constant: -3)
            ])
    }
    
    func setupStackView(){
        let stackView=UIStackView(arrangedSubviews: [firstView,secondView,thirdView])
        setupFirstView()
        setUpSecondView()
        setUpThirdView()
        stackView.translatesAutoresizingMaskIntoConstraints=false
        stackView.distribution = .fillEqually
        stackView.spacing = 2
        stackView.axis = .horizontal
        addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.leftAnchor.constraint(equalTo: leftAnchor,constant: 2),
            stackView.rightAnchor.constraint(equalTo: rightAnchor,constant: -1),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
    }
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        backgroundColor=UIColor.black
        setupStackView()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
