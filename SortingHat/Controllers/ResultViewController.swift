//
//  ResultViewController.swift
//  SortingHat
//
//  Created by  Юлия Григорьева on 24.04.2022.
//

import UIKit

class ResultViewController: UIViewController {

    lazy var resultImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false

        return imageView
    }()

    let transmissionButton: UIButton = {
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(didTapTransmissionButton), for: .touchUpInside)
        button.backgroundColor = .clear
        button.setTitle("One More Chance", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = UIFont(name: "TheBashSingingSlashy", size: 40)
        button.translatesAutoresizingMaskIntoConstraints = false

        return button
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        self.view.addSubview(resultImageView)
        self.view.addSubview(transmissionButton)
        self.activateConstraints()
    }

    func activateConstraints() {
        let imageLeadingConstraint = self.resultImageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20)
        let imageTrailingConstraint = self.resultImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
        let imageXAnchorConstraint = self.resultImageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
        let imageYAnchorConstraint = self.resultImageView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        let imageHeightAnchor = self.resultImageView.heightAnchor.constraint(equalToConstant: 500)

        let transmissionButtonHeightAnchor = self.transmissionButton.heightAnchor.constraint(equalToConstant: 50)
        let transmissionButtonLeadingConstraint = self.transmissionButton.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40)
        let transmissionButtonBottomConstraint = self.transmissionButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -60)
        let transmissionButtonTrailingConstraint = self.transmissionButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -40)

        NSLayoutConstraint.activate([imageLeadingConstraint, imageTrailingConstraint, imageXAnchorConstraint, imageYAnchorConstraint, imageHeightAnchor,
       transmissionButtonHeightAnchor, transmissionButtonLeadingConstraint, transmissionButtonBottomConstraint, transmissionButtonTrailingConstraint  ])
    }

    @objc private func didTapTransmissionButton() {
        self.dismiss(animated: true, completion: nil)
    }
}
