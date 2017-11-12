//
//  GameScene.swift
//  Ahmed Bekhit
//
//  Created by Ahmed Fathi on 4/21/16.
//  Copyright (c) 2016 Ahmed Bekhit. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    var bg = SKSpriteNode()
    var abovebg = SKSpriteNode()
    var title = SKLabelNode()
    var circle = SKSpriteNode()
    var play = SKSpriteNode()
    var info = SKLabelNode()
    var aboutme = SKSpriteNode()

    override func didMoveToView(view: SKView) {
        /*let reveal = SKTransition.fadeWithDuration(0.2)
        let golist = SolarSystemScene(size:(self.view!.bounds.size))
        self.view?.presentScene(golist, transition:reveal)*/
        UIScreen.mainScreen().brightness = CGFloat(0.6)
        backgroundColor = SKColor.blackColor()
        bg = SKSpriteNode(imageNamed:"starsbg.png")
        bg.alpha = 1.0
        bg.zPosition = 0.0
        bg.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        self.addChild(bg)
        
        abovebg = SKSpriteNode(imageNamed:"stars3.png")
        abovebg.alpha = 0.8
        abovebg.zPosition = 90.0
        abovebg.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        self.addChild(abovebg)
        
        title = SKLabelNode(fontNamed:"GillSans-SemiBold")
        title.text = "The Big Bang"
        title.fontColor = SKColor(red:230.0/255.0, green:199.0/255.0, blue:27.0/255.0, alpha: 1)
        title.fontSize = 68
        title.zPosition = 100.0
        title.position = CGPointMake(frame.size.width/2, frame.size.height/1.35)
        self.addChild(title)
        
        circle = SKSpriteNode(imageNamed:"circle.png")
        circle.xScale = 0.0
        circle.yScale = 0.0
        circle.name = "start"
        circle.zPosition = 100.0
        circle.position = CGPointMake(frame.size.width/2, (frame.size.height/2)-25)
        self.addChild(circle)
        
        play = SKSpriteNode(imageNamed:"play.png")
        play.xScale = 0.8
        play.yScale = 0.8
        play.name = "start"
        play.zPosition = 100.0
        play.position = CGPointMake(frame.size.width/2, (frame.size.height/2)-25)
        self.addChild(play)
        
        info = SKLabelNode(fontNamed:"Avenir-Medium")
        info.text = "[This app explains the history of the universe in a simple way]"
        info.fontColor = SKColor.whiteColor()
        info.fontSize = 18
        info.zPosition = 100.0
        info.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/6)
        self.addChild(info)

        let fadeout = SKAction.fadeAlphaTo(0.1, duration: 1.6)
        let fadein = SKAction.fadeAlphaTo(0.4, duration: 1.3)
        let fadeall = SKAction.sequence([fadeout,fadein])
        abovebg.runAction(SKAction.repeatActionForever(fadeall))
        
        let pulsein = SKAction.scaleTo(0.6, duration: 0.3)
        let pulseout = SKAction.scaleTo(0.8, duration: 0.8)
        let pulseall = SKAction.sequence([pulseout,pulsein])
        circle.runAction(pulseout)
        circle.runAction(SKAction.repeatActionForever(pulseall))
        
        aboutme = SKSpriteNode(imageNamed:"profile.png")
        aboutme.alpha = 1.0
        aboutme.xScale = 1.1
        aboutme.yScale = 1.1
        aboutme.zPosition = 100.0
        aboutme.name = "about me"
        aboutme.position = CGPointMake(frame.size.width/1.06, frame.size.height/5.2)
        self.addChild(aboutme)

    }
    
    func goSS(){
        let reveal = SKTransition.fadeWithDuration(0.2)
        let golist = SolarSystemScene(size:(self.view!.bounds.size))
        self.view?.presentScene(golist, transition:reveal)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        for touch in touches {
            let location = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(location)
            
            if let name = touchedNode.name {
                if name == "start" {
                    circle.removeAllActions()
                    bg.removeAllActions()
                    abovebg.removeAllActions()
                    let pulsein = SKAction.scaleTo(0.0, duration: 0.6)
                    let fadeout = SKAction.fadeAlphaTo(0.0, duration: 0.2)
                    let hideall = SKAction.sequence([pulsein,
                        SKAction.runBlock(){
                            let reveal = SKTransition.fadeWithDuration(0.2)
                            let golist = SpaceScene(size:(self.view!.bounds.size))
                            self.view?.presentScene(golist, transition:reveal)
                            print("done")
                        }
                        ])
                    title.runAction(fadeout)
                    info.runAction(fadeout)
                    bg.runAction(hideall)
                    abovebg.runAction(hideall)
                    play.runAction(hideall)
                    circle.runAction(hideall)
                }else if name == "about me" {
                    let reveal = SKTransition.fadeWithDuration(0.2)
                    let golist = AboutMeScene(size:(self.view!.bounds.size))
                    self.view?.presentScene(golist, transition:reveal)
                }
            }

        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
