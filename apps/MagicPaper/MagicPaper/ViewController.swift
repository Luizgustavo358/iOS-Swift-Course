//
//  ViewController.swift
//  MagicPaper
//
//  Created by Luiz Gustavo Bragança dos Santos on 30/01/26.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    var animeName = ""
    var videoNode = SKVideoNode(fileNamed: "art.scnassets/cdz.mp4")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARImageTrackingConfiguration()

        if let imageToTrack = ARReferenceImage.referenceImages(inGroupNamed: "NewsPaperImages", bundle: Bundle.main) {
            configuration.trackingImages = imageToTrack
            configuration.maximumNumberOfTrackedImages = 1
        }
        
        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }

    // MARK: - ARSCNViewDelegate
    
    // Override to create and configure nodes for anchors added to the view's session.
    func renderer(_ renderer: SCNSceneRenderer, nodeFor anchor: ARAnchor) -> SCNNode? {
        let node = SCNNode()
        
        if let imageAnchor = anchor as? ARImageAnchor {
            if let name = imageAnchor.referenceImage.name {
                videoNode = SKVideoNode(fileNamed: "art.scnassets/\(name).mp4")
                let videoScene = SKScene(size: CGSize(width: 576, height: 1024))
                
                videoNode.position = CGPoint(x: videoScene.size.width / 2, y: videoScene.size.height / 2)
                videoNode.yScale = -1.0
                
                videoScene.addChild(videoNode)
                
                videoNode.play()
                
                let plane = SCNPlane(
                    width: imageAnchor.referenceImage.physicalSize.width,
                    height: imageAnchor.referenceImage.physicalSize.height
                )
                
                plane.firstMaterial?.diffuse.contents = videoScene
                
                let planeNode = SCNNode(geometry: plane)
                
                planeNode.eulerAngles.x = -.pi / 2
                
                node.addChildNode(planeNode)
            }
        }
        
        return node
    }
    
    func renderer(_ renderer: any SCNSceneRenderer, didUpdate node: SCNNode, for anchor: ARAnchor) {
        guard let imageAnchor = anchor as? ARImageAnchor else { return }
        
        if imageAnchor.isTracked {
            videoNode.play()
        } else {
            videoNode.pause()
        }
    }
}
