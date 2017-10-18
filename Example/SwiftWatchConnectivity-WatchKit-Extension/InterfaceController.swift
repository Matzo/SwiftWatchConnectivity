//
//  InterfaceController.swift
//  SwiftWatchConnectivity-WatchKit-App Extension
//
//  Created by Matsuo Keisuke on 10/18/17.
//  Copyright © 2017 CocoaPods. All rights reserved.
//

import WatchKit
import Foundation
import SwiftWatchConnectivity

class InterfaceController: WKInterfaceController {

    @IBOutlet weak var messageLabel: WKInterfaceLabel!
    @IBOutlet weak var image: WKInterfaceImage!
    @IBAction func tapButton(button: WKInterfaceButton) {
        SwiftWatchConnectivity.shared.sendMesssage(message: ["msg": "Message from watch: \(NSDate())"])
    }

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        SwiftWatchConnectivity.shared.delegate = self
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}

extension InterfaceController: SwiftWatchConnectivityDelegate {
    func connectivity(_ swiftWatchConnectivity: SwiftWatchConnectivity, updatedWithTask task: SwiftWatchConnectivity.Task) {
        switch task {
        case .updateApplicationContext(let context):
            messageLabel.setText(context.description)
        case .transferUserInfo(let userInfo):
            messageLabel.setText(userInfo.description)
        case .transferFile(let fileURL, let metadata):
            if let data = FileManager.default.contents(atPath: fileURL.path) {
                image.setImageData(data)
            }
            if let metadata = metadata {
                messageLabel.setText(metadata.description)
            }
        case .sendMessage(let message):
            messageLabel.setText((message["msg"] as? Date)?.description)
        case .sendMessageData(let messageData):
            let message = String(data: messageData, encoding: .utf8)
            messageLabel.setText(message)
        }
    }
}
