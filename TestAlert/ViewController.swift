//
//  ViewController.swift
//  TestAlert
//
//  Created by Karen Mathes on 1/5/22.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        
        //.. testing from https://stackoverflow.com/questions/29887869/how-to-present-ios-uiactionsheet-in-swift
    }


    @IBAction func buttonPressed(_ sender: Any) {
        
        //.. test1 - breaks on ipad
//        let alertController = UIAlertController(title: nil, message: "Takes the appearance of the bottom bar if specified; otherwise, same as UIActionSheetStyleDefault.", preferredStyle: .actionSheet)
//
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
//          // ...
//         }
//         alertController.addAction(cancelAction)
//
//        let OKAction = UIAlertAction(title: "OK", style: .default) { (action) in
//           // ...
//        }
//        alertController.addAction(OKAction)
//
//        let destroyAction = UIAlertAction(title: "Destroy", style: .destructive) { (action) in
//        print("this is my action")
//        }
//        alertController.addAction(destroyAction)
//
//        self.present(alertController, animated: true) {
//        // ...
//        }
        
        //.. test 2 breaks on ipad
//        let alertController = UIAlertController(title: "Select Photo", message: "Select atleast one photo", preferredStyle: .actionSheet)
//            let action1 = UIAlertAction(title: "From Photo", style: .default) { (action) in
//                print("Default is pressed.....")
//            }
//            let action2 = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
//                print("Cancel is pressed......")
//            }
//            let action3 = UIAlertAction(title: "Click new", style: .default) { (action) in
//                print("Destructive is pressed....")
//
//            }
//            alertController.addAction(action1)
//            alertController.addAction(action2)
//            alertController.addAction(action3)
//            self.present(alertController, animated: true, completion: nil)
//
//        }
        
        //..test3 ... getting closer but not yet
//        // create an actionSheet
//        let actionSheetController: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
//
//        // create an action
//        let firstAction: UIAlertAction = UIAlertAction(title: "First Action", style: .default) { action -> Void in
//
//            print("First Action pressed")
//        }
//
//        let secondAction: UIAlertAction = UIAlertAction(title: "Second Action", style: .default) { action -> Void in
//
//            print("Second Action pressed")
//        }
//
//        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in }
//
//        // add actions
//        actionSheetController.addAction(firstAction)
//        actionSheetController.addAction(secondAction)
//        actionSheetController.addAction(cancelAction)
//
//
//        // present an actionSheet...
//        // present(actionSheetController, animated: true, completion: nil)   // doesn't work for iPad
//
////        actionSheetController.popoverPresentationController?.sourceView = yourSourceViewName // works for both iPhone & iPad
//        actionSheetController.popoverPresentationController?.sourceView = presentingViewController?.view // works for both iPhone & iPad
//
//        present(actionSheetController, animated: true) {
//            print("option menu presented")
//        }
//
//    }
        
        //..test 4 - nope, not working because need popover.sourceview
//        let alert = UIAlertController()
//
//                let width: Int = Int(UIScreen.main.bounds.width - 100)
//
//                let viewAction    =     UIAlertAction(title: "View", style: .default , handler:{ (UIAlertAction)in
//                                            let storyboard      =   UIStoryboard(name: "Main", bundle: nil)
//                                            let orderDetailVC   =   storyboard.instantiateViewController(withIdentifier: "orderDetail") as! OrderDetailVC
////
////                                            orderDetailVC.orderId     =   self.myDraftOrders[indexPath.row]["id"].intValue
////
//                                            self.navigationController?.pushViewController(orderDetailVC, animated: true)
//                                        })
//
////                viewAction.setValue(appGreenColor, forKey: "titleTextColor")
//
//                alert.addAction(viewAction)
//
//                let modifyAction    =   UIAlertAction(title: "Modify", style: .default, handler:{ (UIAlertAction)in
//                                            //showAlert("Coming soon...")
//                    print("show alert")
//                                        })
//
////                modifyAction.setValue(appCyanColor, forKey: "titleTextColor")
//
//                alert.addAction(modifyAction)
//
//                let copyAction      =   UIAlertAction(title: "Copy", style: .default, handler:{ (UIAlertAction)in
//
//                    print("copy action")
//
////                                            self.copyOrder(orderId: self.myDraftOrders[indexPath.row]["id"].intValue)
//
//                                        })
//
////                copyAction.setValue(appBlueColor, forKey: "titleTextColor")
//
//                alert.addAction(copyAction)
//
//                alert.addAction(UIAlertAction(title: "Delete", style: .destructive , handler:{ (UIAlertAction)in
//
//                    print("delete action")
//
////                    self.deleteOrder(orderId: self.myDraftOrders[indexPath.row]["id"].intValue, indexPath: indexPath)
//
//                }))
//
//                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler:{ (UIAlertAction)in
//                    print("User click Dismiss button")
//
//                }))
//
//                let popover = alert.popoverPresentationController
//
//                popover?.delegate = self
//
////                let cellT = tableView.cellForRow(at: indexPath)
////                popover?.sourceView =   cellT
//
////                let anchor =
//
//                popover?.sourceView
//                popover?.sourceRect =   CGRect(x: width, y: 25, width: 100, height: 50)
//                present(alert, animated: true)
//    }
        
        //..test5 from https://stackoverflow.com/questions/29887869/how-to-present-ios-uiactionsheet-in-swift
        //.. from poster "Swift 5+ Very Simple and Smooth way just call this function and Boommmmmm!!!!!!!"
        
//        let IPAD = UIDevice.current.userInterfaceIdiom == .pad
//
//            var myActionSheet = UIAlertController(title: nil, message: nil, preferredStyle: UIAlertController.Style.actionSheet)
//            myActionSheet.view.tintColor = UIColor.black
//            let galleryAction = UIAlertAction(title: "Gallery", style: .default, handler: {
//                (alert: UIAlertAction!) -> Void in
//                print("open Gallery")
//            })
//            let cmaeraAction = UIAlertAction(title: "Camera", style: .default, handler: {
//                (alert: UIAlertAction!) -> Void in
//                print("open Camera")
//            })
//            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {
//                (alert: UIAlertAction!) -> Void in
//                print("cancel")
//            })
//
//
//            if IPAD {
//                //In iPad Change Rect to position Popover
//                myActionSheet = UIAlertController(title: nil, message: nil, preferredStyle: UIAlertController.Style.alert)
//            }
//            myActionSheet.addAction(galleryAction)
//            myActionSheet.addAction(cmaeraAction)
//            myActionSheet.addAction(cancelAction)
//            print("Action Sheet call")
//
//            self.present(myActionSheet, animated: true, completion: nil)
        
        showAlert()
        
        }
    
    
    func showAlert() {

        let alert3 = UIAlertController(title: "Testing Alert", message: "This is a test alert with buttons", preferredStyle: .alert)

        let okAction3 = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            print("ok Kar")
        })
        
        let cancelAction3 = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            print("cancel")
        }
        
        let segueAction3 = UIAlertAction(title: "Segue?", style: .default) { (action) in
            print("segue")
            self.performSegue(withIdentifier: "kamSegue", sender: self)
        }

        alert3.addAction(okAction3)
        alert3.addAction(cancelAction3)
        alert3.addAction(segueAction3)
        alert3.view.backgroundColor = UIColor.init(red: 200.0/255.0, green: 0.0/255.0, blue: 0.0/255.0, alpha: 1.0)
        self.present(alert3, animated: true , completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! ViewController2
    }
}

