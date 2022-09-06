//
//  DebuggingSceneDelegate.swift
//  EssentialApp
//
//  Created by shuo on 2022/9/6.
//

#if DEBUG
import UIKit
import EssentialFeed

class DebuggingSceneDelegate: SceneDelegate {
    
    override func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let _ = (scene as? UIWindowScene) else { return }
        
        if CommandLine.arguments.contains("-reset") {
            try? FileManager.default.removeItem(at: localStoreURL)
        }
        
        super.scene(scene, willConnectTo: session, options: connectionOptions)
    }

    override func makeRemoteClient() -> HTTPClient {
        if UserDefaults.standard.string(forKey: "connectivity") == "offlilne" {
            return AlwaysFailingHTTOClient()
        }
        return super.makeRemoteClient()
    }
}

private class AlwaysFailingHTTOClient: HTTPClient {
    private class Task: HTTPClientTask {
        func cancel() {}
    }
    
    func get(from url: URL, completion: @escaping (HTTPClient.Result) -> Void) -> HTTPClientTask {
        completion(.failure(NSError(domain: "offline", code: 0)))
        return Task()
    }
}
#endif
