//
//  MatchVC.swift
//  Tinder
//
//  Created by victor willyam on 6/3/22.
//

import UIKit

class MatchVC: UIViewController, UITextFieldDelegate {
    
    var usuario: Usuario? {
        didSet {
            if let usuario = usuario {
                fotoImageView.image = UIImage(named: usuario.foto)
                mensagemLabel.text = "\(usuario.nome) curtiu você também!"
            }
        }
    }
    
    let fotoImageView: UIImageView = .fotoImageView(named: "pessoa-1")
    let likeImagemView: UIImageView = .fotoImageView(named: "icone-like")
    let mensagemLabel: UILabel = .textBoldLabel(18, textColor: .white, numberOfLines: 1)
}
