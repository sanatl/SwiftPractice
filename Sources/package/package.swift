import Foundation
import os
class ListFiles {
    static func listFiles() -> [String] {
        let fm = FileManager.default
        do {
            let contents = try fm.contentsOfDirectory(atPath:fm.currentDirectoryPath)
            return contents
        } catch  {
            if #available(OSX 10.12, *) {
                os_log("Can not list the contents of the directory %@", error.localizedDescription)
            } else {
                // Fallback on earlier versions
                print("Can not list the contents of the directory %@", error.localizedDescription)
            }
            return []
        }
    }
}
