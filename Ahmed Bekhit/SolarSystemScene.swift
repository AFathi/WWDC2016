//
//  SolarSystemScene.swift
//  Ahmed Bekhit
//
//  Created by Ahmed Fathi on 4/28/16.
//  Copyright © 2016 Ahmed Bekhit. All rights reserved.
//

import SpriteKit
import UIKit
class SolarSystemScene: SKScene {
    var p1 = SKSpriteNode()
    var p2 = SKSpriteNode()
    var p3 = SKSpriteNode()
    var p4 = SKSpriteNode()
    var p5 = SKSpriteNode()
    var p6 = SKSpriteNode()
    var p7 = SKSpriteNode()
    var p8 = SKSpriteNode()
    var sun = SKSpriteNode()
    var aboutme = SKSpriteNode()
    var restart = SKSpriteNode()

    var bg = SKSpriteNode()
    var abovebg = SKSpriteNode()
    var infobg = SKSpriteNode()
    var info = SKLabelNode()
    var title = SKLabelNode()
    var moreinfo = SKSpriteNode()
    
    var followCircle1 = SKAction()
    var followCircle2 = SKAction()
    var followCircle3 = SKAction()
    var followCircle4 = SKAction()
    var followCircle5 = SKAction()
    var followCircle6 = SKAction()

    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.blackColor()
        bg = SKSpriteNode(imageNamed:"starsbg.png")
        bg.alpha = 1.0
        bg.xScale = 0.0
        bg.yScale = 0.0
        bg.zPosition = 0.0
        bg.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        self.addChild(bg)
        
        aboutme = SKSpriteNode(imageNamed:"profile.png")
        aboutme.alpha = 1.0
        aboutme.xScale = 0.5
        aboutme.yScale = 0.5
        aboutme.zPosition = 90.0
        aboutme.name = "about me"
        aboutme.position = CGPointMake(frame.size.width/1.08, frame.size.height/14)
        self.addChild(aboutme)
        
        restart = SKSpriteNode(imageNamed:"restart.png")
        restart.alpha = 1.0
        restart.xScale = 0.5
        restart.yScale = 0.5
        restart.zPosition = 90.0
        restart.name = "go space"
        restart.position = CGPointMake(frame.size.width/1.22, frame.size.height/14)
        self.addChild(restart)
        
        abovebg = SKSpriteNode(imageNamed:"stars3.png")
        abovebg.alpha = 0.8
        abovebg.zPosition = 10.0
        abovebg.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        abovebg.xScale = 0.0
        abovebg.yScale = 0.0
        self.addChild(abovebg)
        
        
        sun = SKSpriteNode(imageNamed:"sun.png")
        sun.xScale = 0.5
        sun.yScale = 0.5
        sun.zPosition = 99
        sun.position = CGPointMake(frame.size.width/2.2, frame.size.height/2)
        self.addChild(sun)
        
        /*let finaltip = SKSpriteNode(imageNamed:"finaltip.png")
        finaltip.xScale = 0.8
        finaltip.yScale = 0.8
        finaltip.zPosition = 100
        finaltip.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        //self.addChild(finaltip)*/

        //for i in 1 ..< 9 {
            p1 = SKSpriteNode(imageNamed:"8.png")
            p1.xScale = 0.0
            p1.yScale = 0.0
            p1.zPosition = 98
            p1.position = CGPointMake(frame.size.width/15, frame.size.height/1.6)
            //self.addChild(p1)
            p1.runAction(SKAction.scaleTo(0.04, duration: 1.2))
        
        p2 = SKSpriteNode(imageNamed:"7.png")
        p2.xScale = 0.0
        p2.yScale = 0.0
        p2.zPosition = 98
        p2.position = CGPointMake(frame.size.width/1.1, frame.size.height/2.4)
       // self.addChild(p2)
        p2.runAction(SKAction.scaleTo(0.06, duration: 1.2))
        
        p3 = SKSpriteNode(imageNamed:"6.png")
        p3.xScale = 0.0
        p3.yScale = 0.0
        p3.zPosition = 98
        p3.position = CGPointMake(frame.size.width/4, frame.size.height/1.3)
        self.addChild(p3)
        p3.runAction(SKAction.scaleTo(0.065, duration: 1.2))
        
        p4 = SKSpriteNode(imageNamed:"5.png")
        p4.xScale = 0.0
        p4.yScale = 0.0
        p4.zPosition = 98
        p4.position = CGPointMake(frame.size.width/12, frame.size.height/4)
        self.addChild(p4)
        p4.runAction(SKAction.scaleTo(0.08, duration: 1.2))
        
        p5 = SKSpriteNode(imageNamed:"4.png")
        p5.xScale = 0.0
        p5.yScale = 0.0
        p5.zPosition = 98
        p5.position = CGPointMake(frame.size.width/1.6, frame.size.height/2.4)
        self.addChild(p5)
        p5.runAction(SKAction.scaleTo(0.062, duration: 1.2))
        
        p6 = SKSpriteNode(imageNamed:"3.png")
        p6.xScale = 0.0
        p6.yScale = 0.0
        p6.zPosition = 98
        p6.position = CGPointMake(frame.size.width/1.6, frame.size.height/1.28)
        self.addChild(p6)
        p6.runAction(SKAction.scaleTo(0.068, duration: 1.2))
        
        p7 = SKSpriteNode(imageNamed:"2.png")
        p7.xScale = 0.0
        p7.yScale = 0.0
        p7.zPosition = 98
        p7.position = CGPointMake(frame.size.width/1.6, frame.size.height/1.28)
        self.addChild(p7)
        p7.runAction(SKAction.scaleTo(0.035, duration: 1.2))
        
        p8 = SKSpriteNode(imageNamed:"1.png")
        p8.xScale = 0.0
        p8.yScale = 0.0
        p8.zPosition = 98
        p8.position = CGPointMake(frame.size.width/1.6, frame.size.height/1.28)
        self.addChild(p8)
        p8.runAction(SKAction.scaleTo(0.025, duration: 1.2))
        
        
        let pulseout = SKAction.scaleTo(0.6, duration: 0.4)
        bg.runAction(pulseout)
        abovebg.runAction(pulseout)
        let fadeouty = SKAction.fadeAlphaTo(0.4, duration: 1.6)
        let fadein = SKAction.fadeAlphaTo(1.0, duration: 1.3)
        let fadeall = SKAction.sequence([fadeouty,fadein])
        self.abovebg.runAction(SKAction.repeatActionForever(fadeall))
        
        
        let orbit1 = UIBezierPath(ovalInRect: CGRectMake(0, 0, 66, 150))
        orbit1.applyTransform(CGAffineTransformMakeRotation(120 * CGFloat(M_PI)/180))
        orbit1.applyTransform(CGAffineTransformMakeTranslation(-orbit1.bounds.origin.x, -orbit1.bounds.origin.y))
        orbit1.applyTransform(CGAffineTransformMakeTranslation(frame.size.width/2.75, frame.size.height/2.65))
        let shape1 = SKShapeNode()
        shape1.path = orbit1.CGPath
        shape1.fillColor = UIColor.clearColor()
        shape1.strokeColor = UIColor.blueColor()
        shape1.lineWidth = 2.0
        shape1.alpha = 0.4
        shape1.zPosition = 80
        self.addChild(shape1)
        
        let orbit2 = UIBezierPath(ovalInRect: CGRectMake(0, 0, 45, 90))
        orbit2.applyTransform(CGAffineTransformMakeRotation(120 * CGFloat(M_PI)/180))
        orbit2.applyTransform(CGAffineTransformMakeTranslation(-orbit2.bounds.origin.x, -orbit2.bounds.origin.y))
        orbit2.applyTransform(CGAffineTransformMakeTranslation(frame.size.width/2.5, frame.size.height/2.4))
        let shape2 = SKShapeNode()
        shape2.path = orbit2.CGPath
        shape2.fillColor = UIColor.clearColor()
        shape2.strokeColor = UIColor.blueColor()
        shape2.lineWidth = 2.0
        shape2.alpha = 0.4
        shape2.zPosition = 80
        self.addChild(shape2)
        
        
        let orbit3 = UIBezierPath(ovalInRect: CGRectMake(0, 0, 125, 300))
        orbit3.applyTransform(CGAffineTransformMakeRotation(120 * CGFloat(M_PI)/180))
        orbit3.applyTransform(CGAffineTransformMakeTranslation(-orbit3.bounds.origin.x, -orbit3.bounds.origin.y))
        orbit3.applyTransform(CGAffineTransformMakeTranslation(frame.size.width/4, frame.size.height/4))
        let shape3 = SKShapeNode()
        shape3.path = orbit3.CGPath
        shape3.fillColor = UIColor.clearColor()
        shape3.strokeColor = UIColor.blueColor()
        shape3.lineWidth = 2.0
        shape3.alpha = 0.4
        shape3.zPosition = 80
        self.addChild(shape3)
        
        let orbit4 = UIBezierPath(ovalInRect: CGRectMake(0, 0, 200, 450))
        orbit4.applyTransform(CGAffineTransformMakeRotation(120 * CGFloat(M_PI)/180))
        orbit4.applyTransform(CGAffineTransformMakeTranslation(-orbit4.bounds.origin.x, -orbit4.bounds.origin.y))
        orbit4.applyTransform(CGAffineTransformMakeTranslation(frame.size.width/6.2, frame.size.height/6.2))
        let shape4 = SKShapeNode()
        shape4.path = orbit4.CGPath
        shape4.fillColor = UIColor.clearColor()
        shape4.strokeColor = UIColor.blueColor()
        shape4.lineWidth = 2.0
        shape4.alpha = 0.4
        shape4.zPosition = 80
        self.addChild(shape4)
        
        let orbit5 = UIBezierPath(ovalInRect: CGRectMake(0, 0, 260, 580))
        orbit5.applyTransform(CGAffineTransformMakeRotation(120 * CGFloat(M_PI)/180))
        orbit5.applyTransform(CGAffineTransformMakeTranslation(-orbit5.bounds.origin.x, -orbit5.bounds.origin.y))
        orbit5.applyTransform(CGAffineTransformMakeTranslation(frame.size.width/12, frame.size.height/18))
        let shape5 = SKShapeNode()
        shape5.path = orbit5.CGPath
        shape5.fillColor = UIColor.clearColor()
        shape5.strokeColor = UIColor.blueColor()
        shape5.lineWidth = 2.0
        shape5.alpha = 0.4
        shape5.zPosition = 80
        self.addChild(shape5)
        
        let orbit6 = UIBezierPath(ovalInRect: CGRectMake(0, 0, 300, 620))
        orbit6.applyTransform(CGAffineTransformMakeRotation(120 * CGFloat(M_PI)/180))
        orbit6.applyTransform(CGAffineTransformMakeTranslation(-orbit6.bounds.origin.x, -orbit6.bounds.origin.y))
        orbit6.applyTransform(CGAffineTransformMakeTranslation(frame.size.width/22, frame.size.height/38))
        let shape6 = SKShapeNode()
        shape6.path = orbit6.CGPath
        shape6.fillColor = UIColor.clearColor()
        shape6.strokeColor = UIColor.blueColor()
        shape6.lineWidth = 2.0
        shape6.alpha = 0.4
        shape6.zPosition = 80
        self.addChild(shape6)
        
        
        followCircle1 = SKAction.followPath(shape1.path!, asOffset: false, orientToPath: false, duration: 10.0)
        p7.runAction(SKAction.repeatActionForever(followCircle1))
        
        followCircle3 = SKAction.followPath(shape3.path!, asOffset: false, orientToPath: false, duration: 15.0)
        p6.runAction(SKAction.repeatActionForever(followCircle3))
        
        followCircle2 = SKAction.followPath(shape2.path!, asOffset: false, orientToPath: false, duration: 5.0)
        p8.runAction(SKAction.repeatActionForever(followCircle2))
        
        followCircle4 = SKAction.followPath(shape4.path!, asOffset: false, orientToPath: false, duration: 20.0)
        p5.runAction(SKAction.repeatActionForever(followCircle4))
        
        followCircle5 = SKAction.followPath(shape5.path!, asOffset: false, orientToPath: false, duration: 25.0)
        p4.runAction(SKAction.repeatActionForever(followCircle5))
        
        followCircle6 = SKAction.followPath(shape6.path!, asOffset: false, orientToPath: false, duration: 30.0)
        p3.runAction(SKAction.repeatActionForever(followCircle6))
        
        
        infobg = SKSpriteNode(imageNamed:"infobg.png")
        infobg.alpha = 0.6
        infobg.zPosition = 99
        infobg.xScale = 0.8
        infobg.yScale = 0.8
        infobg.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        self.addChild(infobg)
        
        title = SKLabelNode(fontNamed:"GillSans-SemiBold")
        title.text = "Solar System"
        title.fontColor = SKColor(red:230.0/255.0, green:199.0/255.0, blue:27.0/255.0, alpha: 1)
        title.fontSize = 46
        title.zPosition = 100.0
        title.position = CGPointMake(frame.size.width/2, frame.size.height/1.32)
        self.addChild(title)
        
        moreinfo = SKSpriteNode(imageNamed:"solarinfo.png")
        moreinfo.xScale = 0.7
        moreinfo.yScale = 0.7
        moreinfo.zPosition = 100.0
        moreinfo.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        self.addChild(moreinfo)
        
        info = SKLabelNode(fontNamed:"Menlo-Regular")
        info.text = "[Swipe anywhere on the screen]"
        info.fontColor = SKColor.whiteColor()
        info.fontSize = 20
        info.alpha = 1.0
        info.zPosition = 100
        info.position = CGPointMake(frame.size.width/2, frame.size.height/18)
        self.addChild(info)
        
        let swipeR:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SolarSystemScene.swiped(_:)))
        swipeR.direction = .Right
        view.addGestureRecognizer(swipeR)
        
        let swipeL:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SolarSystemScene.swiped(_:)))
        swipeL.direction = .Left
        view.addGestureRecognizer(swipeL)
        
        let swipeU:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SolarSystemScene.swiped(_:)))
        swipeU.direction = .Up
        view.addGestureRecognizer(swipeU)
        
        let swipeD:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SolarSystemScene.swiped(_:)))
        swipeD.direction = .Down
        view.addGestureRecognizer(swipeD)
    }
    
    
    func swiped(sender:UISwipeGestureRecognizer){
        let fadeout = SKAction.fadeAlphaTo(0.0, duration: 0.4)
        let hideall = SKAction.sequence([fadeout,
            SKAction.runBlock(){
            }
            ])
        infobg.runAction(hideall)
        title.runAction(hideall)
        moreinfo.runAction(hideall)
        info.runAction(hideall)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        for touch in touches {
            let location = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(location)
            
            if let name = touchedNode.name {
                if name == "about me" {
                    let reveal = SKTransition.fadeWithDuration(0.2)
                    let golist = AboutMeScene(size:(self.view!.bounds.size))
                    self.view?.presentScene(golist, transition:reveal)
                }else if name == "go space" {
                    let reveal = SKTransition.fadeWithDuration(0.2)
                    let golist = SpaceScene(size:(self.view!.bounds.size))
                    self.view?.presentScene(golist, transition:reveal)
                }
            }
        }
    }
    
}
