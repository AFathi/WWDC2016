//
//  SpaceScene.swift
//  Ahmed Bekhit
//
//  Created by Ahmed Fathi on 4/23/16.
//  Copyright © 2016 Ahmed Bekhit. All rights reserved.
//

import SpriteKit

class SpaceScene: SKScene {
    var infobg = SKSpriteNode()
    var bg = SKSpriteNode()
    var stars = SKSpriteNode()
    var abovebg = SKSpriteNode()
    var singleStar = SKSpriteNode()
    var galaxy1 = SKSpriteNode()
    var galaxy2 = SKSpriteNode()
    var info = SKLabelNode()
    var title = SKLabelNode()
    var moreinfo = SKSpriteNode()
    var title2 = SKLabelNode()
    var moreinfo2 = SKSpriteNode()
    var nextbtn = SKSpriteNode()
    var nexttip = SKLabelNode()
    var expansionParticle = SKEmitterNode()
    var starsParticle = SKEmitterNode()
    var galaxyParticle = SKEmitterNode()

    var enable3D = 0
    override func didMoveToView(view: SKView) {
        backgroundColor = SKColor.blackColor()
        bg = SKSpriteNode(imageNamed:"starsbg.png")
        bg.alpha = 0.0
        bg.xScale = 0.0
        bg.yScale = 0.0
        bg.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        self.addChild(bg)
        
        abovebg = SKSpriteNode(imageNamed:"stars3.png")
        abovebg.alpha = 0.0
        abovebg.xScale = 0.0
        abovebg.yScale = 0.0
        abovebg.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        self.addChild(abovebg)
        
        stars = SKSpriteNode(imageNamed:"stars.png")
        stars.alpha = 0.0
        stars.xScale = 0.0
        stars.yScale = 0.0
        stars.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        self.addChild(stars)
        
        let path = NSBundle.mainBundle().pathForResource("singularityParticles", ofType: "sks")
        expansionParticle = NSKeyedUnarchiver.unarchiveObjectWithFile(path!) as! SKEmitterNode
        
        expansionParticle.position = CGPointMake(self.size.width/2, self.size.height/2)
        expansionParticle.name = "expansionParticle"
        expansionParticle.targetNode = self.scene
        expansionParticle.hidden = true
        expansionParticle.zPosition = 0.0
        self.addChild(expansionParticle)
        
        singleStar = SKSpriteNode(imageNamed:"singularity.png")
        singleStar.xScale = 0.5
        singleStar.yScale = 0.5
        singleStar.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        self.addChild(singleStar)

        info = SKLabelNode(fontNamed:"Menlo-Regular")
        info.text = "Press on the screen"
        info.fontColor = SKColor(red:141.0/255.0, green:198.0/255.0, blue:20.0/255.0, alpha: 1)
        info.fontSize = 20
        info.alpha = 0
        info.position = CGPointMake(frame.size.width/2, frame.size.height/18)
        self.addChild(info)
        
        infobg = SKSpriteNode(imageNamed:"infobg.png")
        infobg.alpha = 0.6
        infobg.zPosition = 98
        infobg.xScale = 0.8
        infobg.yScale = 0.8
        infobg.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        self.addChild(infobg)
        
        title = SKLabelNode(fontNamed:"GillSans-SemiBold")
        title.text = "Initial Singularity"
        title.fontColor = SKColor(red:230.0/255.0, green:199.0/255.0, blue:27.0/255.0, alpha: 1)
        title.fontSize = 46
        title.zPosition = 100.0
        title.position = CGPointMake(frame.size.width/2, frame.size.height/1.32)
        self.addChild(title)
        
        moreinfo = SKSpriteNode(imageNamed:"Initialinfo.png")
        moreinfo.xScale = 0.7
        moreinfo.yScale = 0.7
        moreinfo.zPosition = 100.0
        moreinfo.position = CGPointMake(frame.size.width/2, frame.size.height/2)
        self.addChild(moreinfo)
        
        /*nextbtn = SKSpriteNode(imageNamed:"nextbtn.png")
        nextbtn.xScale = 0.7
        nextbtn.yScale = 0.7
        nextbtn.zPosition = 100.0
        nextbtn.name = "next"
        nextbtn.position = CGPointMake(frame.size.width/2, frame.size.height/8)
        self.addChild(nextbtn)*/
        
        nexttip = SKLabelNode(fontNamed:"Menlo-Regular")
        nexttip.text = "[Swipe anywhere on the screen]"
        nexttip.fontColor = SKColor.whiteColor()
        nexttip.fontSize = 16
        nexttip.alpha = 1.0
        nexttip.zPosition = 100.0
        nexttip.position = CGPointMake(frame.size.width/2, frame.size.height/8)
        self.addChild(nexttip)
        
        
        let particleEmitter2: SKEmitterNode = SKEmitterNode(fileNamed: "hotgalaxyparticle.sks")!
        galaxy1 = SKSpriteNode(imageNamed:"g1.png")
        galaxy1.alpha = 0.0
        galaxy1.xScale = 0.0
        galaxy1.yScale = 0.0
        galaxy1.zPosition = 100
        galaxy1.position = CGPointMake(frame.size.width/1.4, frame.size.height/2)
        self.addChild(galaxy1)
        galaxy1.addChild(particleEmitter2)
        
        let particleEmitter1: SKEmitterNode = SKEmitterNode(fileNamed: "milkyparticle.sks")!
        galaxy2 = SKSpriteNode(imageNamed:"milkyy.png")
        galaxy2.alpha = 0.0
        galaxy2.xScale = 0.0
        galaxy2.yScale = 0.0
        galaxy2.zPosition = 100
        galaxy2.position = CGPointMake(frame.size.width/1.4, frame.size.height/2)
        self.addChild(galaxy2)
        galaxy2.addChild(particleEmitter1)
        
        self.title2 = SKLabelNode(fontNamed:"GillSans-SemiBold")
        self.title2.text = "Milky Way"
        self.title2.fontColor = SKColor(red:230.0/255.0, green:199.0/255.0, blue:27.0/255.0, alpha: 1)
        self.title2.fontSize = 46
        self.title2.zPosition = 100.0
        self.title2.alpha = 0.0
        self.title2.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/1.32)
        self.addChild(self.title2)
        
        self.moreinfo2 = SKSpriteNode(imageNamed:"milkyinfo.png")
        self.moreinfo2.xScale = 0.7
        self.moreinfo2.yScale = 0.7
        self.moreinfo2.alpha = 0.0
        self.moreinfo2.zPosition = 100.0
        self.moreinfo2.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/2)
        self.addChild(self.moreinfo2)
        
        let swipeR:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SpaceScene.swiped(_:)))
        swipeR.direction = .Right
        view.addGestureRecognizer(swipeR)
        
        let swipeL:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SpaceScene.swiped(_:)))
        swipeL.direction = .Left
        view.addGestureRecognizer(swipeL)
        
        let swipeU:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SpaceScene.swiped(_:)))
        swipeU.direction = .Up
        view.addGestureRecognizer(swipeU)
        
        let swipeD:UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(SpaceScene.swiped(_:)))
        swipeD.direction = .Down
        view.addGestureRecognizer(swipeD)
    }
    
    func swiped(sender:UISwipeGestureRecognizer){
        if enable3D == 0 {
            let fadeout = SKAction.fadeAlphaTo(0.0, duration: 0.4)
            let hideall = SKAction.sequence([fadeout,
                SKAction.runBlock(){
                    self.info.alpha = 1.0
                    self.enable3D = 1
                }
                ])
            infobg.runAction(hideall)
            title.runAction(hideall)
            moreinfo.runAction(hideall)
            nexttip.runAction(hideall)
        }else if enable3D == 2 {
            //self.title.position = CGPointMake(self.frame.size.width/4.6, self.frame.size.height/1.20)
            nexttip.alpha = 0.0
            self.infobg.xScale = 0.30
            title.text = "  Formation of galaxies"
            title.fontSize = 26
            starsParticle.particleBirthRate = 0
            self.moreinfo.texture = SKTexture(imageNamed: "galaxiesinfo.png")
            stars.removeAllActions()
            stars.runAction(SKAction.fadeAlphaTo(0.08, duration: 0.8))
            self.createGalaxy()
            enable3D = 01291
        }else if enable3D == 12 {
            self.galaxy2.runAction(SKAction.moveTo(CGPointMake(self.frame.size.width/2, self.frame.size.height/2), duration: 0.4))
            let fadeout = SKAction.fadeAlphaTo(0.0, duration: 0.4)
            let hideall = SKAction.sequence([fadeout,
                SKAction.runBlock(){
                    self.galaxy2.zPosition = 50
                    self.infobg.alpha = 0.6
                    self.infobg.zPosition = 100
                    self.infobg.xScale = 0.8
                    self.infobg.yScale = 0.8
                    self.infobg.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/2)

                    self.title2.alpha  = 1.0
                    self.moreinfo2.alpha = 1.0
                    self.nexttip.text = "[Swipe anywhere on the screen]"
                    self.nexttip.fontColor = SKColor.whiteColor()
                    self.nexttip.fontSize = 16
                    self.nexttip.alpha = 1.0
                    self.nexttip.zPosition = 100.0
                    self.nexttip.position = CGPointMake(self.frame.size.width/2, self.frame.size.height/8)
                    
                    
                    self.info.text = "Press on the screen"
                    self.info.fontColor = SKColor(red:141.0/255.0, green:198.0/255.0, blue:20.0/255.0, alpha: 1)
                    self.enable3D = 32
                    self.info.alpha = 0.0
                    let pulseout = SKAction.scaleTo(0.7, duration: 0.5)
                    self.galaxy2.runAction(pulseout)
                }
                ])
            self.infobg.runAction(hideall)
            self.galaxy1.runAction(hideall)
            self.title.runAction(hideall)
            self.moreinfo.runAction(hideall)
            self.nexttip.runAction(hideall)
            self.enable3D = 01291
        }else if enable3D == 32 {
            let fadeout = SKAction.fadeAlphaTo(0.0, duration: 0.4)
            let hideall = SKAction.sequence([fadeout,
                SKAction.runBlock(){
                    self.info.alpha = 1.0
                    self.enable3D = 3
                }
                ])
            infobg.runAction(hideall)
            title2.runAction(hideall)
            moreinfo2.runAction(hideall)
            nexttip.runAction(hideall)
        }
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        for touch in touches {
            let location = touch.locationInNode(self)
            let touchedNode = self.nodeAtPoint(location)
            
            if let name = touchedNode.name {
                if name == "next" {
                    if enable3D == 0 {
                    let fadeout = SKAction.fadeAlphaTo(0.0, duration: 0.4)
                    let hideall = SKAction.sequence([fadeout,
                            SKAction.runBlock(){
                                self.info.alpha = 1.0
                                self.enable3D = 1
                        }
                    ])
                    infobg.runAction(hideall)
                    title.runAction(hideall)
                    moreinfo.runAction(hideall)
                    nextbtn.runAction(hideall)
                    }else if enable3D == 2 {
                        //self.title.position = CGPointMake(self.frame.size.width/4.6, self.frame.size.height/1.20)
                        nextbtn.alpha = 0.0
                        self.infobg.xScale = 0.30
                        title.text = "//Formation of galaxies"
                        title.fontSize = 18
                        starsParticle.particleBirthRate = 0
                        self.moreinfo.texture = SKTexture(imageNamed: "galaxiesinfo.png")
                        stars.removeAllActions()
                        stars.runAction(SKAction.fadeAlphaTo(0.08, duration: 0.8))
                        self.createGalaxy()
                    }
                }
            }
        }
        
    }
    
    func createGalaxy() {
        let particleEmitter1: SKEmitterNode = SKEmitterNode(fileNamed: "galaxyParticles")!
        abovebg.addChild(particleEmitter1)
        abovebg.runAction(SKAction.rotateByAngle(CGFloat(M_PI), duration: 0.0))

        let path = NSBundle.mainBundle().pathForResource("galaxyParticles", ofType: "sks")
        
        galaxyParticle = NSKeyedUnarchiver.unarchiveObjectWithFile(path!) as! SKEmitterNode
        
        galaxyParticle.position = CGPointMake(self.size.width, self.size.height/2)
        galaxyParticle.name = "galaxyParticles"
        galaxyParticle.targetNode = self.scene
        galaxyParticle.zPosition = 100.0
        self.addChild(galaxyParticle)
        let wait = SKAction.waitForDuration(1.5)
        let run = SKAction.runBlock {
            self.galaxy1.alpha = 0.6
            let pulseout = SKAction.scaleTo(0.6, duration: 2.4)
            let pulseall = SKAction.sequence([pulseout,
                SKAction.runBlock(){
                    self.galaxy1.runAction(SKAction.moveTo(CGPointMake(self.frame.size.width/1.2, self.frame.size.height/5), duration: 0.4))
                    let wait = SKAction.waitForDuration(1.2)
                    self.abovebg.runAction(SKAction.sequence([wait,
                        SKAction.runBlock(){
                            self.galaxy2.alpha = 0.8
                            let pulseout = SKAction.scaleTo(0.5, duration: 2.4)
                            let pulseall = SKAction.sequence([pulseout,
                                SKAction.runBlock(){
                                self.galaxy2.runAction(SKAction.moveTo(CGPointMake(self.frame.size.width/1.6, self.frame.size.height/1.4), duration: 0.4))
                                    self.abovebg.removeAllChildren()
                                    self.galaxyParticle.particleBirthRate = 0
                                    self.showAfterGalaxy()
                            }])
                            self.galaxy2.runAction(pulseall)


                        }]))
                }])
            self.galaxy1.runAction(pulseall)

            //self.galaxyParticle.particleBirthRate = 0
            //self.abovebg.removeAllChildren()
        }
        abovebg.runAction(SKAction.sequence([wait, run]))
    }
    
    func showAfterGalaxy(){
        let wait2 = SKAction.waitForDuration(0.8)
        let waitfinal = SKAction.sequence([wait2,
            SKAction.runBlock(){
                self.nexttip.alpha = 1.0
                self.enable3D = 12
                /*self.galaxy2.runAction(SKAction.moveTo(CGPointMake(self.frame.size.width/2, self.frame.size.height/2), duration: 0.4))
                let fadeout = SKAction.fadeAlphaTo(0.0, duration: 0.4)
                let hideall = SKAction.sequence([fadeout,
                    SKAction.runBlock(){
                        self.info.text = "Press on the screen"
                        self.info.fontColor = SKColor(red:141.0/255.0, green:198.0/255.0, blue:20.0/255.0, alpha: 1)
                        self.enable3D = 3
                        self.info.alpha = 1.0
                        let pulseout = SKAction.scaleTo(0.7, duration: 0.5)
                        self.galaxy2.runAction(pulseout)
                    }
                    ])
                self.infobg.runAction(hideall)
                self.galaxy1.runAction(hideall)
                self.title.runAction(hideall)
                self.moreinfo.runAction(hideall)
                self.nexttip.runAction(hideall)*/
            }])
        galaxy2.runAction(waitfinal)
    }
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if let touch = touches.first {
            if enable3D == 1 {
            let force = touch.force/touch.maximumPossibleForce
            print("\(Int(force*100))%")
            if touch.force == touch.maximumPossibleForce {
                print("THAT'S MAXIMUM")
                let fadeout = SKAction.fadeAlphaTo(0.0, duration: 0.2)
                info.alpha = 0.0
                bg.alpha = 0.7
                abovebg.alpha = 1.0
                NSLog("%f",UIScreen.mainScreen().brightness)
                UIScreen.mainScreen().brightness = CGFloat(1.0)
                let pulseout = SKAction.scaleTo(0.8, duration: 0.4)
                let pulseall = SKAction.sequence([pulseout,
                    SKAction.runBlock(){
                        self.expansionParticle.particleBirthRate = 0
                        self.infobg.xScale = 0.30
                        self.title.text = "Formation of stars"
                        self.title.position = CGPointMake(self.frame.size.width/5.2, self.frame.size.height/1.20)
                        self.title.fontSize = 28
                        
                        self.moreinfo.texture = SKTexture(imageNamed: "starsinfo.png")
                        self.moreinfo.xScale = 0.31
                        self.moreinfo.yScale = 1.2
                        self.moreinfo.position = CGPointMake(self.frame.size.width/4.7, self.frame.size.height/2)
                        self.infobg.position = CGPointMake(self.frame.size.width/5.6, self.frame.size.height/2)
                        let fadeouty = SKAction.fadeAlphaTo(0.4, duration: 1.6)
                        let fadein = SKAction.fadeAlphaTo(1.0, duration: 1.3)
                        let fadeall = SKAction.sequence([fadeouty,fadein])
                        self.abovebg.runAction(SKAction.repeatActionForever(fadeall))
                        self.title.runAction(SKAction.fadeAlphaTo(1.0, duration: 0.4))
                        self.moreinfo.runAction(SKAction.fadeAlphaTo(1.0, duration: 0.4))
                        self.infobg.runAction(SKAction.fadeAlphaTo(0.6, duration: 0.4))
                        self.animateStars()
                    }
                    ])
                bg.runAction(pulseall)
                abovebg.runAction(pulseall)
                singleStar.runAction(fadeout)
                enable3D = 2
                

            }else if force >= 0.2{
                singleStar.xScale = force*3
                singleStar.yScale = force*3
            }
            
            if force >= 0.3 {
                info.text = "PRESS HARDER"
                info.fontColor = SKColor(red:194.0/255.0, green:53.0/255.0, blue:149.0/255.0, alpha: 1)
            }
            if force >= 0.5 {
                info.text = "ADD MORE PRESSURE"
                info.fontColor = SKColor(red:221.0/255.0, green:138.0/255.0, blue:91.0/255.0, alpha: 1)
            }
            if force >= 0.8 {
                info.text = "YOU'RE SO CLOSE!"
                info.fontColor = SKColor(red:236.0/255.0, green:44.0/255.0, blue:61.0/255.0, alpha: 1)
            }
            }else if enable3D == 3 {
                    let force = touch.force/touch.maximumPossibleForce
                    print("\(Int(force*100))%")
                    if touch.force == touch.maximumPossibleForce {
                        let reveal = SKTransition.fadeWithDuration(0.4)
                        let golist = SolarSystemScene(size:(self.view!.bounds.size))
                        self.view?.presentScene(golist, transition:reveal)
                    }else if force >= 0.2{
                        galaxy2.xScale = force*3
                        galaxy2.yScale = force*3
                    }
                
                if force >= 0.3 {
                    info.text = "PRESS HARDER"
                    info.fontColor = SKColor(red:194.0/255.0, green:53.0/255.0, blue:149.0/255.0, alpha: 1)
                }
                if force >= 0.5 {
                    info.text = "ADD MORE PRESSURE"
                    info.fontColor = SKColor(red:221.0/255.0, green:138.0/255.0, blue:91.0/255.0, alpha: 1)
                }
                if force >= 0.8 {
                    info.text = "YOU'RE SO CLOSE!"
                    info.fontColor = SKColor(red:236.0/255.0, green:44.0/255.0, blue:61.0/255.0, alpha: 1)
                }

            }

        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if enable3D == 1 {
        let pulsein = SKAction.scaleTo(0.5, duration: 0.2)
        singleStar.runAction(pulsein)
        info.text = "Press on the screen"
        info.fontColor = SKColor(red:141.0/255.0, green:198.0/255.0, blue:20.0/255.0, alpha: 1)
        }else if enable3D == 3 {
            let pulsein = SKAction.scaleTo(0.6, duration: 0.2)
            galaxy2.runAction(pulsein)
            info.text = "Press on the screen"
            info.fontColor = SKColor(red:141.0/255.0, green:198.0/255.0, blue:20.0/255.0, alpha: 1)
        }
    }
    
    func animateStars(){
        let path = NSBundle.mainBundle().pathForResource("starsParticles", ofType: "sks")
        starsParticle = NSKeyedUnarchiver.unarchiveObjectWithFile(path!) as! SKEmitterNode
        
        starsParticle.position = CGPointMake(self.size.width/2, self.size.height/2)
        starsParticle.zRotation = 90.0
        starsParticle.name = "starsParticle"
        starsParticle.targetNode = self.scene
        starsParticle.zPosition = 95.0
        self.addChild(starsParticle)
        stars.alpha = 0.6
        let pulseout = SKAction.scaleTo(0.8, duration: 0.4)
        let pulseall = SKAction.sequence([pulseout,
            SKAction.runBlock(){
                let pulseout = SKAction.scaleTo(1.8, duration: 20.0)
                self.stars.runAction(pulseout)
                self.nexttip.alpha = 1.0
                self.nexttip.fontSize = 12
                self.nexttip.position = CGPointMake(self.frame.size.width/4.9, self.frame.size.height/8)
            }])
        stars.runAction(pulseall)
    }

}
