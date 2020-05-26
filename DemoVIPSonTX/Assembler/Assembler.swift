//
//  File.swift
//  DemoVIPSonTX
//
//  Created by iOS Team on 5/25/20.
//  Copyright © 2020 iOS Team. All rights reserved.
//

import Foundation

protocol Assembler: class,
                    RegisterAssembler,
                    LoginAssembler,
                    HomeAssembler,
                    WorkerAssembler {}

final class DefaultAssembler: Assembler {
    
}
