//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Marlowe Wind on 16.01.2023.
//

import UIKit

final class ViewController: UIViewController {

    // MARK: - Properties

    private let gameNameLabel = UILabel()
    private var gameStatusLabel = UILabel()
    private let enemyGestureImageView = UIImageView()
    private let playerGestureImageView = UIImageView()
    private let pickRockButton = UIButton(type: .system)
    private let pickPaperButton = UIButton(type: .system)
    private let pickScissorsButton = UIButton(type: .system)
    
    var gameState: String? = "start"
    
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drawing()
    }
    
    
    // MARK: - Drawing
    
    func drawing() {
        
        view.backgroundColor = .systemGray5

        gameNameLabel.translatesAutoresizingMaskIntoConstraints = false
        gameNameLabel.text = "Rock-Paper-Scissors"
        gameNameLabel.font = UIFont(name: "Copperplate-Bold", size: 25)
        gameNameLabel.textColor = .black
        
        gameStatusLabel.translatesAutoresizingMaskIntoConstraints = false
        gameStatusLabel.text = ""
        switch gameState {
        case "start":
            gameStatusLabel.text = ""

        case "win":
            gameStatusLabel.text = "WIN"
            gameStatusLabel.textColor = .green

        case "lose":
            gameStatusLabel.text = "LOSE"
            gameStatusLabel.textColor = .red

        case "draw":
            gameStatusLabel.text = "DRAW"
            gameStatusLabel.textColor = .yellow

        case .none:
            gameStatusLabel.text = ""

        case .some(_):
            gameStatusLabel.text = ""
        }
        gameStatusLabel.font = UIFont(name: "Copperplate-Bold", size: 50)
        
        enemyGestureImageView.translatesAutoresizingMaskIntoConstraints = false
        enemyGestureImageView.image = UIImage(named: "rock")
        
        playerGestureImageView.translatesAutoresizingMaskIntoConstraints = false
        playerGestureImageView.image = UIImage(named: "paper")
        
        pickRockButton.translatesAutoresizingMaskIntoConstraints = false
        pickRockButton.setImage(UIImage(named: "rock"), for: .normal)
        pickRockButton.tintColor = .black
        pickRockButton.addTarget(self, action: #selector(didTapRockButton), for: .touchUpInside)
        
        pickPaperButton.translatesAutoresizingMaskIntoConstraints = false
        pickPaperButton.setImage(UIImage(named: "paper"), for: .normal)
        pickPaperButton.tintColor = .black
        pickPaperButton.addTarget(self, action: #selector(didTapPaperButton), for: .touchUpInside)
        
        pickScissorsButton.translatesAutoresizingMaskIntoConstraints = false
        pickScissorsButton.setImage(UIImage(named: "scissors"), for: .normal)
        pickScissorsButton.tintColor = .black
        pickScissorsButton.addTarget(self, action: #selector(didTapScissorsButton), for: .touchUpInside)
        
        view.addSubview(gameNameLabel)
        view.addSubview(gameStatusLabel)
        view.addSubview(enemyGestureImageView)
        view.addSubview(playerGestureImageView)
        view.addSubview(pickRockButton)
        view.addSubview(pickPaperButton)
        view.addSubview(pickScissorsButton)
        
        NSLayoutConstraint.activate([
                        
            gameNameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 60),
            gameNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            gameStatusLabel.topAnchor.constraint(equalTo: gameNameLabel.bottomAnchor, constant: 20),
            gameStatusLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            enemyGestureImageView.topAnchor.constraint(equalTo: gameNameLabel.bottomAnchor, constant: 120),
            enemyGestureImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            enemyGestureImageView.widthAnchor.constraint(equalToConstant: 150),
            enemyGestureImageView.heightAnchor.constraint(equalToConstant: 150),
            
            playerGestureImageView.topAnchor.constraint(equalTo: gameNameLabel.bottomAnchor, constant: 320),
            playerGestureImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            playerGestureImageView.widthAnchor.constraint(equalToConstant: 150),
            playerGestureImageView.heightAnchor.constraint(equalToConstant: 150),
            
            pickRockButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            pickRockButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            pickRockButton.widthAnchor.constraint(equalToConstant: 100),
            pickRockButton.heightAnchor.constraint(equalToConstant: 100),
            
            pickPaperButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            pickPaperButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pickPaperButton.widthAnchor.constraint(equalToConstant: 100),
            pickPaperButton.heightAnchor.constraint(equalToConstant: 100),
            
            pickScissorsButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            pickScissorsButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16),
            pickScissorsButton.widthAnchor.constraint(equalToConstant: 100),
            pickScissorsButton.heightAnchor.constraint(equalToConstant: 100),
            
            ])
        
    }
    
    
    // MARK: - Actions

    @objc func didTapRockButton() {
        print("rock")
    }
    
    @objc func didTapPaperButton() {
        print("paper")
    }
    
    @objc func didTapScissorsButton() {
        print("scissors")
    }
    
}

