//
//  CustomChannelsViewController.swift
//  ChatApp
//
//  Created by Agustin Castaneda on 02/03/20.
//  Copyright © 2020 Agustin Castaneda. All rights reserved.
//

import UIKit
import StreamChat
import StreamChatCore

class CustomChannelsViewController: ChannelsViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("🥑 \(Self.self).\(#function)")
    }
    
    override func createChatViewController(with channelPresenter: ChannelPresenter, indexPath: IndexPath) -> ChatViewController {
//        Load CustomChatViewController
        let chatViewController = CustomChatViewController(nibName: nil, bundle: nil)
        chatViewController.style = style
        channelPresenter.eventsFilter = channelsPresenter.channelEventsFilter
        chatViewController.channelPresenter = channelPresenter
        print("❕\(Self.self).\(#function)")
        return chatViewController
    }


}

