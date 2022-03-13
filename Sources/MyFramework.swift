//
//  MyFramework.swift
//  TabPageViewController
//
//  Created by Khaled Khaldi on 13/03/2022.
//

import Foundation

public class MyFramework: NSObject {
    static let bundleName = "TabPageViewController"

    public static let bundle = Bundle(for: MyFramework.self)

    /// Returns the resource bundle associated with the current Swift module. This is required for SPM use
    public static var module: Bundle = {
        let bundleName = "TabPageViewController" // May be "MyFramework_MyFramework" for you

        let candidates = [
            // Bundle should be present here when the package is linked into an App.
            Bundle.main.resourceURL,

            // Bundle should be present here when the package is linked into a framework.
            Bundle(for: MyFramework.self).resourceURL,

            // For command-line tools.
            Bundle.main.bundleURL
        ]

        for candidate in candidates {
            let bundlePath = candidate?.appendingPathComponent(bundleName + ".bundle")
            if let bundle = bundlePath.flatMap(Bundle.init(url:)) {
                return bundle
            }
        }
        return MyFramework.bundle
    }()
}
