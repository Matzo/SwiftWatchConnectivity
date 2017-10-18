//
//  ViewController.swift
//  SwiftWatchConnectivity
//
//  Created by ksk.matsuo@gmail.com on 10/18/2017.
//  Copyright (c) 2017 ksk.matsuo@gmail.com. All rights reserved.
//

import UIKit
import SwiftWatchConnectivity

class ViewController: UIViewController {

    @IBAction func didTapSendMessageButton(button: UIButton) {
        SwiftWatchConnectivity.shared.sendMesssage(message: ["msg": NSDate()])
    }
    @IBAction func didTapSendUserInfoButton(button: UIButton) {
        SwiftWatchConnectivity.shared.transferUserInfo(userInfo: [
            "string": "hello",
            "bool": false,
            "array": [1,2,3]
            ])
    }
    @IBAction func didTapSendDataButton(button: UIButton) {
        guard let data = "messageData".data(using: .utf8) else { return }
        SwiftWatchConnectivity.shared.sendMesssageData(data: data)
    }
    @IBAction func didTapSendFileButton(button: UIButton) {
        guard let fileURL = Bundle.main.url(forResource: "dog", withExtension: "jpg") else { return }
        SwiftWatchConnectivity.shared.transferFile(fileURL: fileURL, metadata: ["Level": "8"])
    }

    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        SwiftWatchConnectivity.shared.delegate = self
    }
}

extension ViewController: SwiftWatchConnectivityDelegate {
    func connectivity(_ swiftWatchConnectivity: SwiftWatchConnectivity, updatedWithTask task: SwiftWatchConnectivity.Task) {
        switch task {
        case .sendMessage(let message):
            label.text = message["msg"] as? String
        case .transferUserInfo(let userInfo):
            label.text = userInfo.description
        case .updateApplicationContext(let context):
            label.text = context.description
        case .transferFile(_, _):
            break
        case .sendMessageData(_):
            break
        }
    }
}
