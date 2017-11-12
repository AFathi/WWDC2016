//
//  AboutMeScene.swift
//  Ahmed Bekhit
//
//  Created by Ahmed Fathi on 5/1/16.
//  Copyright © 2016 Ahmed Bekhit. All rights reserved.
//

import SpriteKit

class AboutMeScene: SKScene {
    var bg = SKSpriteNode()
    var myname = SKSpriteNode()
    var myage = SKSpriteNode()
    var mybio = SKSpriteNode()
    var gospace =  SKSpriteNode()
    var info = SKLabelNode()
    var startit = 0
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor(red: 236.0/255.0, green: 236.0/255.0, blue: 236.0/255.0, alpha: 1)
        bg = SKSpriteNode(imageNamed:"aboutbg.png")
        bg.alpha = 1.0
        bg.xScale = 0.7
        bg.yScale = 0.7
        bg.zPosition = 0.0
        bg.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        self.addChild(bg)
        

        
        mybio = SKSpriteNode(imageNamed:"bio.png")
        mybio.alpha = 0.58
        mybio.xScale = 0.36
        mybio.yScale = 0.36
        mybio.position = CGPointMake(frame.size.width/2.3, frame.size.height/1.2)
        mybio.zPosition = 95
        self.addChild(mybio)
        
        myage = SKSpriteNode(imageNamed:"age.png")
        myage.alpha = 0.7
        myage.xScale = 0.48
        myage.yScale = 0.48
        myage.position = CGPointMake(frame.size.width/1.8, frame.size.height/1.4)
        myage.zPosition = 98
        self.addChild(myage)
        
        myname = SKSpriteNode(imageNamed:"name.png")
        myname.alpha = 0.9
        myname.xScale = 0.6
        myname.yScale = 0.6
        myname.zPosition = 100
        myname.position = CGPointMake(frame.size.width/2.6, frame.size.height/2)
        self.addChild(myname)
        
        info = SKLabelNode(fontNamed:"Menlo-Regular")
        info.text = "[Double tap on the screen]"
        info.fontColor = SKColor.grayColor()
        info.fontSize = 14
        info.alpha = 1.0
        info.zPosition = 100
        info.position = CGPointMake(frame.size.width/6, frame.size.height/1.05)
        self.addChild(info)
        
        gospace = SKSpriteNode(imageNamed: "goSpace.png")
        gospace.name = "go space"
        gospace.alpha = 1.0
        gospace.xScale = 0.14
        gospace.yScale = 0.14
        gospace.zPosition = 100
        gospace.position = CGPointMake(frame.size.width/1.06, frame.size.height/1.08)
        self.addChild(gospace)
        
        let doubletap = UITapGestureRecognizer(target: self, action:#selector(AboutMeScene.doubletap))
        doubletap.numberOfTapsRequired = 2
        self.view!.addGestureRecognizer(doubletap)
        
        let swipeR:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(AboutMeScene.swiped(_:)))
        swipeR.direction = .Right
        view.addGestureRecognizer(swipeR)
        
        let swipeL:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(AboutMeScene.swiped(_:)))
        swipeL.direction = .Left
        view.addGestureRecognizer(swipeL)
        
        let swipeU:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(AboutMeScene.swiped(_:)))
        swipeU.direction = .Up
        view.addGestureRecognizer(swipeU)
        
        let swipeD:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(AboutMeScene.swiped(_:)))
        swipeD.direction = .Down
        view.addGestureRecognizer(swipeD)
    }
    
    
    func swiped(sender:UISwipeGestureRecognizer){
        if startit == 1 {
            startit = 2
            let nameSize = SKAction.scaleTo(1.2, duration: 0.8)
            let namePos = SKAction.moveToY(frame.size.height/6, duration: 0.8)
            let nameAlpha = SKAction.fadeAlphaTo(0.0, duration: 1.2)
            myname.runAction(namePos)
            myname.runAction(nameAlpha)
            myname.runAction(nameSize)
            
            let ageSize = SKAction.scaleTo(0.8, duration: 0.8)
            let agePos = SKAction.moveToY(frame.size.height/3.2, duration: 0.8)
            let ageAlpha = SKAction.fadeAlphaTo(1.0, duration: 0.8)
            myage.runAction(agePos)
            myage.runAction(ageSize)
            myage.runAction(ageAlpha)
            
            let bioSize = SKAction.scaleTo(0.6, duration: 0.8)
            let bioPos = SKAction.moveToY(frame.size.height/2, duration: 0.8)
            let bioAlpha = SKAction.fadeAlphaTo(0.9, duration: 0.8)
            mybio.runAction(bioSize)
            mybio.runAction(bioPos)
            mybio.runAction(bioAlpha)
            myage.texture = SKTexture(imageNamed: "myage.png")

        }else if startit == 2 {
            startit = 0
            info.text = "[Double tap to restart]"
            info.position = CGPointMake(frame.size.width/6, frame.size.height/1.05)

            let ageSize = SKAction.scaleTo(1.2, duration: 0.8)
            let agePos = SKAction.moveToY(frame.size.height/6, duration: 0.8)
            let ageAlpha = SKAction.fadeAlphaTo(0.0, duration: 1.2)
            myage.runAction(agePos)
            myage.runAction(ageSize)
            myage.runAction(ageAlpha)
            
            let bioSize = SKAction.scaleTo(0.8, duration: 0.8)
            let bioPos = SKAction.moveToY(frame.size.height/3.2, duration: 0.8)
            let bioAlpha = SKAction.fadeAlphaTo(1.0, duration: 0.8)
            mybio.runAction(bioSize)
            mybio.runAction(bioPos)
            mybio.runAction(bioAlpha)
            mybio.texture = SKTexture(imageNamed: "mybio.png")

        }
    }
    func doubletap() {
        if startit == 0 {
            info.text = "[Swipe anywhere on the screen]"
            info.position = CGPointMake(frame.size.width/5.3, frame.size.height/1.05)

            myname.texture = SKTexture(imageNamed: "name.png")
            mybio.texture = SKTexture(imageNamed: "bio.png")
            myage.texture = SKTexture(imageNamed: "age.png")

            let nameSize = SKAction.scaleTo(0.8, duration: 0.8)
            let namePos = SKAction.moveToY(frame.size.height/3.2, duration: 0.8)
            let nameAlpha = SKAction.fadeAlphaTo(1.0, duration: 0.8)
            myname.runAction(namePos)
            myname.runAction(nameAlpha)
            myname.runAction(nameSize)
            myname.texture = SKTexture(imageNamed: "myname.png")
            
            let ageSize = SKAction.scaleTo(0.6, duration: 0.8)
            let agePos = SKAction.moveToY(frame.size.height/2, duration: 0.8)
            let ageAlpha = SKAction.fadeAlphaTo(0.9, duration: 0.8)
            myage.runAction(agePos)
            myage.runAction(ageSize)
            myage.runAction(ageAlpha)
            
            let bioSize = SKAction.scaleTo(0.48, duration: 0.8)
            let bioPos = SKAction.moveToY(frame.size.height/1.8, duration: 0.8)
            let bioAlpha = SKAction.fadeAlphaTo(0.7, duration: 0.8)
            mybio.runAction(bioSize)
            mybio.runAction(bioPos)
            mybio.runAction(bioAlpha)
            
            startit = 1
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        for touch in touches {
            let location = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(location)
            
            if let name = touchedNode.name {
                if name == "go space" {
                    let reveal = SKTransition.fadeWithDuration(0.2)
                    let golist = SpaceScene(size:(self.view!.bounds.size))
                    self.view?.presentScene(golist, transition:reveal)
                }
            }
        }
    }
}
