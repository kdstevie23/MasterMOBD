//
//  CreatePostViewController.swift
//  socialMediaV2TableView
//
//  Created by Steven Newman on 11/16/22.
//

import UIKit


protocol CreatePostViewControllerDelegate {
    func addPost(post: Post)
}


class CreatePostViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .lightGray

        // Do any additional setup after loading the view.
    }
    

    var delegate: CreatePostViewControllerDelegate?
    var post: Post?
    
    @IBOutlet weak var UsernameCreatePostTextField: UITextField!
    @IBOutlet weak var CommentCreatePostTextField: UITextField!
    
    @IBAction func ConfirmPostCreated(_ sender: Any) {
        
        
        guard let usernameText: String = UsernameCreatePostTextField.text, let commentText: String = CommentCreatePostTextField.text else
        { return }
        
        
        var post = Post(user: usernameText, comment: commentText)
        
        delegate?.addPost(post: post)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
