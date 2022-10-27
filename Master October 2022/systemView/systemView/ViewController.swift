//
//  ViewController.swift
//  systemView
//
//  Created by Steven Newman on 10/25/22.
//

import UIKit
import SafariServices
import MessageUI


class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func shareButtonTapped(_ sender: UIButton) {
        guard let image = imageView.image else { return }
        let activityController = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        
        activityController.popoverPresentationController?.sourceView = sender
        
        present(activityController, animated: true)
    }
    @IBAction func safariButtonTapped(_ sender: UIButton) {
        guard let url = URL(string: "https://www.apple.com") else { return }
        
        let safariController = SFSafariViewController(url: url)
        present(safariController, animated: true)
    }
    
    
    @IBAction func cameraButtonTapped(_ sender: UIButton)
    {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        
        // ^ in the background
        
        // 1 Pops up the option to choose different options
        let alertController = UIAlertController(title: "Choose Image Source", message: nil, preferredStyle: .actionSheet)
        // 1.5 Pops up with the window but its only the cancel button attached to it
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        alertController.addAction(cancelAction)
        
        
        
        // if the camera is available, run the code
        if UIImagePickerController.isSourceTypeAvailable(.camera)
        {
            let cameraAction = UIAlertAction(title: "Camera", style: .default)
            {
                _ in
                imagePicker.sourceType = .camera
                self.present(imagePicker, animated: true)
            }
            alertController.addAction(cameraAction)
        }
        
        
        
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary)
        {
            let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default)
            {
                _ in
                imagePicker.sourceType = .photoLibrary
                self.present(imagePicker, animated: true)
            }
            alertController.addAction(photoLibraryAction)
        }
        alertController.popoverPresentationController?.sourceView = sender
        
        present(alertController, animated: true)
        
    }
    
    
    
    @IBAction func emailButtonTapped(_ sender: UIButton)
        {
            guard MFMailComposeViewController.canSendMail() else { return print("Can't send email") }
            
            let mailComposer = MFMailComposeViewController()
            mailComposer.mailComposeDelegate = self
            
            mailComposer.setToRecipients(["kdstevie23@gmail.com"])
            mailComposer.setSubject("check it out")
            mailComposer.setMessageBody("this is awesome", isHTML: false)
            
            if let image = imageView.image, let jpegData = image.jpegData(compressionQuality: 0.9) {
                mailComposer.addAttachmentData(jpegData, mimeType: "image/jpeg", fileName: "photo.png")
            }
            
            present(mailComposer, animated: true)
        }
    }



extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate, MFMailComposeViewControllerDelegate
{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        guard let selectImage = info[.originalImage] as? UIImage else { return }
        
        imageView.image = selectImage
        
        dismiss(animated: true)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        dismiss(animated: true)
    }
    
}


