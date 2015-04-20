//
//  Element.swift
//  pathfinder
//
//  Created by Tester on 4/18/15.
//  Copyright (c) 2015 harvard-pathfinder. All rights reserved.
//

import Foundation
import SpriteKit


// directional
enum Direction {
    case North, NorthEast, East, SouthEast, South, SouthWest, West, NorthWest
}

// includes Players, Obstacles, and Flags
class Element: SKSpriteNode {
    var invSpeed: Int {
        return 0
    }
    
    // initializer
    override init () {
        let texture = SKTexture(imageNamed: "elt")
        super.init(texture: texture, color: nil, size: texture.size())
    }

    func nextDirection () -> Direction? {
        return nil
    }
    
    // allows us to see which subclass of element it is
    func isHero () -> Bool {
        return false
    }
    
    func isObstacle () -> Bool {
        return false
    }
    
    func isFlag () -> Bool {
        return false
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}