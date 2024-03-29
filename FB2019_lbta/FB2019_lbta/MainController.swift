//
//  MainController.swift
//  FB2019_lbta
//
//  Created by 低调 on 12/13/19.
//  Copyright © 2019 Kaiyuan Zhao. All rights reserved.
//

import UIKit
import LBTATools


class PostCell: LBTAListCell<String> {
    
    let imageView = UIImageView(backgroundColor: .red)
    let nameLabel = UILabel(text: "Name Label")
    let dateLabel = UILabel(text: "Friday at 11:00am")
    let postTextLabel = UILabel(text: "Here is my post text")
    let imageViewGrid = UIView(backgroundColor: .yellow)
    override func setupViews() {
        backgroundColor = .white
        stack(hstack(imageView.withHeight(40).withWidth(40), stack(nameLabel, dateLabel), spacing: 8).padLeft(12).padRight(12).padTop(12), postTextLabel, imageViewGrid, spacing: 8)
    }
    
}
class MainController: LBTAListController<PostCell, String>, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .init(white: 0.9, alpha:1)
        self.items = ["hello", "WORLD", "1", "2"]
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 300)
    }

}

import SwiftUI
struct MainPreview: PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    struct ContainerView: UIViewControllerRepresentable {
        
        func makeUIViewController(context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) -> UIViewController {
            return MainController()
        }
        func updateUIViewController(_ uiViewController: MainPreview.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) {
        
        }
    }
}
