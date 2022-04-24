//
//  StartViewController.swift
//  SortingHat
//
//  Created by  Юлия Григорьева on 24.04.2022.
//

import UIKit

class StartViewController: UIViewController {

    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "hat")
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView

    }()

    let resultButton: UIButton = {
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.backgroundColor = .clear
        button.setTitle("Put On", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setTitleColor(.red, for: .selected)
        button.titleLabel?.font = UIFont(name: "TheBashSingingSlashy", size: 70)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(backgroundImageView)
        self.view.addSubview(resultButton)
        activateConstraints()
    }

    private func activateConstraints() {

        let topImageConstraint = self.backgroundImageView.topAnchor.constraint(equalTo: self.view.topAnchor)
        let leadingImageConstraint = self.backgroundImageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor)
        let trailingImageConstraint = self.backgroundImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        let bottomImageConstraint = self.backgroundImageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)

        let heightButtonConstraint = self.resultButton.heightAnchor.constraint(equalToConstant: 50)
        let leadingButtonConstraint = self.resultButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40)
        let trailingButtonConstraint = self.resultButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -40)
        let bottomButtonConstraint = self.resultButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -60)

        NSLayoutConstraint.activate([
            topImageConstraint, leadingImageConstraint, trailingImageConstraint, bottomImageConstraint, heightButtonConstraint, leadingButtonConstraint, trailingButtonConstraint, bottomButtonConstraint
        ])
    }

    @objc func buttonPressed() {

        let image1 = UIImage(named: "gryffindor")
        let image2 = UIImage(named: "hufflepuff")
        let image3 = UIImage(named: "ravenclaw")
        let image4 = UIImage(named: "slytherin")

        let facultyArray = [image1, image2, image3, image4]

        let vc = ResultViewController()

        vc.resultImageView.image = facultyArray[Int.random(in: 0...3)]
        self.present(vc, animated: true, completion: nil)
    }
}


